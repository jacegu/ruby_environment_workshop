#encoding: utf-8
#language: en

Feature: Add two numbers

  Background:
    Given I have opened the calculator

  Scenario: Add two positive numbers
    Given I have input "1" as the first operand
      And I have input "2" as the second operand
     When I ask for the sum of the two numbers
     Then I get "3" as the answer

  @pending
  Scenario: Add a negative and positive number

  @pending
  Scenario: Add a two negative numbers

  @pending
  Scenario: Missing operands
