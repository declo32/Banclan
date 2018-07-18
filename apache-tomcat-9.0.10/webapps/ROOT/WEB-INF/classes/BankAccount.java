package com.banclan.jsp;
import java.lang.Math;

public class BankAccount {
	public double balance;
	public double interestRate;
	public long interestPeriod; // how long before interest is compounded in milliseconds
	public long startDate;      // in milliseconds since epoch
	public long lastCompound;   // in milliseconds since epoch

	public BankAccount(double startBalance, double interestRate, long interestPeriod, long startDate) {
		this.balance = startBalance;
		this.interestRate = interestRate;
		this.interestPeriod = interestPeriod;
		this.startDate = startDate;
		this.lastCompound = startDate;
	}

	public void update(long currentDate) {
		compounds = Math.floor((currentDate - lastCompound) / interestPeriod;

		if (compounds > 0) {
			interest = balance * Math.pow(interestRate, compounds);
			deposit(interest);
			lastCompound += interestPeriod * compounds;
		}
	}

	public void deposit(double amount) {
		balance += amount;
	}

	public void withdraw(double amount) {
		balance -= amount;
	}

	public void pay(BankAccount bankAccount, double amount) {
		this.withdraw(amount);
		bankAccount.deposit(amount);
	}
}
