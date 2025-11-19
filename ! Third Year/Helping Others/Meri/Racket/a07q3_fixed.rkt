;; ***************************************************
;;  Meredith Meng (21189752)
;;  CS 115 Fall 2025
;;  Assignment 7, Question 3 
;; ***************************************************

;; A Player is a (list Sym (listof Nat))

;; Constructor
;; make-player: Sym (listof Nat) -> Player
(define (make-player id scores) (list id scores))

;; Selectors
;; player-id: Player -> Sym
(define (player-id s) (first s))

;; player-scores: Player -> (listof Nat)
(define (player-scores s) (second s))

;; AllPlayers is a (listof Player)
;; Requires: Each id in the list is unique

;; A Score is a (list Sym Nat)

;; Constructor
;; make-score: Sym Nat -> Score
(define (make-score id total) (list id total))

;; Selectors
;; score-id: Score -> Sym
(define (score-id s) (first s))

;; score-total: Score -> Nat
(define (score-total s) (second s))

;; AllScores is a (listof Score)
;; Requires: Each id in the list is unique

;; A Result is a (list Sym Sym)

;; Constructor
;; make-result: Sym Sym -> Result
(define (make-result id class) (list id class))

;; Selectors
;; result-id: Result -> Sym
(define (result-id s) (first s))

;; result-class: Result -> Sym
(define (result-class s) (second s))

;; AllResults is a (listof Result)
;; Requires: Each id in the list is unique


(define (classify-standings players num-rounds)
  (local
    ;; eligible players
    [(define (eligible-players players)
       (cond
         [(empty? players) empty]
         [(= (length (player-scores (first players))) num-rounds)
          (cons (first players) (eligible-players (rest players)))]
         [else (eligible-players (rest players))]))
     
     ;; score sums
     (define (score-sum player-score)
       (cond
         [(empty? player-score) 0]
         [else (+ (first player-score)
                  (score-sum (rest player-score)))]))
     
     ;; score list with player totals
     (define (score-results players-eligible)
       (cond
         [(empty? players-eligible) empty]
         [else (cons (make-score (player-id (first players-eligible))
                                 (score-sum
                                  (player-scores (first players-eligible))))
                     (score-results (rest players-eligible)))]))

     ;; get just scores
     (define (just-scores results)
       (cond
         [(empty? results) empty]
         [else (cons (score-total (first results))
                     (just-scores (rest results)))]))
     
     ;; find max and min
     (define (find-extrema sign extrema total-scores)
       (cond
         [(empty? total-scores) extrema]
         [(sign (first total-scores) extrema)
          (find-extrema sign (first total-scores) (rest total-scores))]
         [else (find-extrema sign extrema (rest total-scores))]))

     ;; classify
     (define (add-classification score max-score min-score)
       (cond
         [(= max-score min-score) 'tied]
         [(= score max-score) 'winner]
         [(= score min-score) 'needs-improvement]
         [else 'average]))

     ;; Apply to all
     (define (classify-player player-results max-score min-score)
       (cond
         [(empty? player-results) empty]
         [else (cons (make-result (score-id (first player-results))
                                  (add-classification
                                   (score-total (first player-results))
                                   max-score min-score))
                     (classify-player (rest player-results)
                                      max-score min-score))]))]

    (local
      [(define eligible (eligible-players players))
       (define player-results (score-results eligible))
       (define all-scores (just-scores player-results))
       (define max-score (find-extrema > (first all-scores) (rest all-scores)))
       (define min-score (find-extrema < (first all-scores) (rest all-scores)))]
      (classify-player player-results max-score min-score))))
     

(define game-results
  (list
   (make-player 'a (list 3 7 10))      ; excluded
   (make-player 'b (list 5 4 2 8))     ; total 19
   (make-player 'c (list 6 6 6 6))     ; total 24
   (make-player 'd (list 10 9))        ; excluded
   (make-player 'e (list 8 6 9 1))     ; total 24
   (make-player 'f (list 5 5 5 5))))   ; total 20

(check-expect (classify-standings game-results 4)
              (list (list 'b 'needs-improvement)
		    (list 'c 'winner)
		    (list 'e 'winner)
		    (list 'f 'average)))


(define check1 (list (make-player 'a (list 5 5))     ; total 10
                     (make-player 'b (list 3 2))     ; 5
                     (make-player 'c (list 4 4))))   ; total 8

; Expected: 
; (list (make-result 'a 'winner)
;       (make-result 'c 'average)
;       (make-result 'b 'needs-improvement))

(check-expect (classify-standings check1 2)
              (list (list 'a 'winner)
                    (list 'b 'needs-improvement)
                    (list 'c 'average)))
