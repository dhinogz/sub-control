package models

import (
	"database/sql"
	"fmt"
	"time"
)

type Subscription struct {
	ID          int
	StartDate   time.Time
	EndDate     time.Time
	RenewalDate time.Time
	Cost        float64
	Provider    string
	Status      int
}

type SubscriptionService struct {
	DB *sql.DB
}

func (ss *SubscriptionService) Create(startDate, endDate, renewalDate time.Time, cost float64, provider string, status int) string {
	return fmt.Sprintf("start: %v\nend: %v\nrenewal: %v\ncost %v\nprovider %s\nstatus: %d\n", startDate, endDate, renewalDate, cost, provider, status)
}
