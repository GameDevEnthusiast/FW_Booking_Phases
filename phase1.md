# Phase 1: Evaluation and Technology Selection

## Current System (PHP)
The legacy system is a PHP-based application for booking workspaces in 3 rooms. It handles desk selection (PC/non-PC) and half-day/full-day sessions with Google OAuth authentication.

## Hovedproblemer (Key Problems)
1. Lack of spatial/floor map representation.
2. Poor accessibility (non-WCAG compliant UI).
3. Lack of advanced filtering/search options.
4. Rigid architecture preventing expansion to meeting rooms.

## Technology Comparison
| Metric | Node.js + React + SQL | Spring Boot + React + SQL | Django + SQL |
| :--- | :--- | :--- | :--- |
| **Learning Curve** | Low-Moderate | High | Moderate |
| **Norway Demand** | Very High | Moderate | Low |
| **Suitability** | Excellent | Over-engineered | Fair |

## Selected Technology
**JavaScript Stack (Node.js + React + PostgreSQL)**. This allows for a unified TypeScript codebase, excellent support for interactive React components, and high performance for concurrent users.
