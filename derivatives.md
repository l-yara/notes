µ# Definitions
- A **derivative** is an asset whose value is derived from that of some other asset, known as the **underlying**;
- a **premium** - initial fee which is being paid to the dealer who writes (creates) derivative;
- **open interest** : the total number of (futures) contracts outstanding either long or short (всего matched но не поставленных еще контрактов: т.к. контракты стандартизованы, то количество matched контрактов с двух сторон одинаково: $N_{Flong} = N_{Fshort}$;
- **tick value** : a minimum price change in a contract;
- CAPM : Capital Asset Pricing Model
- CIP : Covered Interest Parity
- DCC : Dollar Cost of Carry;
- PCC : Percent Cost of Carry;
- SIF : Stock Index Futures;


#### Interests
for simple $r_s$, compound $r$ and continuously compounded $r_c$ rates:

$M = P_0(1 + r_sT) = P_0( 1 + r)^T = P_0 e^{r_cT}$

#### Present Values:
- for simple rate: $P_0 = M \frac {1} {(1 + r_sT)}$
- for compound rate: $P_0 = M\frac{1}{(1 + r)^T}$
- for continuously compound rate: $P_0 = Me^{-r_cT}$

# Futures

To be separated vs the Forwards (OTC) as:
  - Fixed contract sizes and settlement dates vs Can be done for any amount, and settlement date;
  - Traded on exchanges vs Supplied by intermediaries (i.e. banks);
  - Credit risk eliminated by clearing house margining system (**marking-to-market**: contract value changes each day) vs Credit risk of counterparty and expensive to unwind;
etc.

## Futures Markets

### Margin Accounts and Price/Position Limits:
**Margin Account** заводится при открытии новой позиции. На него вносится **Initial Margin**. Если рынок движется "против тебя", баланс на этом счету снижается; если баланс падает ниже **Maintenance Margin**, ты должен пополнить до уровня **Initial Margin** (ситуация называется **Margin Call**, вносимая сумма - **Variation Margin**; если до конца дня не пополнить - брокер ликвидирует позицию продежей/покупкой актива). Если рынок движется "за тебя", баланс растет; обычно в таком случае можно снимать деньги с Margin Account (но нельзя снижать below Initial Margin).

При сильном изменении цены возможны ситуации, когда баланс на Margin Account уйдет в $<0$. Во избежание сего устанавливается **daily price limit**:(**Limit Down**/**Limit Up**). Если цена выходит за пределы этого *circuit breaker*, торги в этот день (обычно) останавливаются, давая время пополнить Margin Account к завтрашним торгам.

**Position Limit** is the maximum number of contracts a speculator may hold (e.g. a maximum of $y$ contracts with no more than $z [< y]$ in any one delivery month). This prevents speculators from having undue influence on the market. Bona-fide hedgers are not subject to position limits.

### Delivery and Settlement
The decision on when to deliver is made by the party with the _short position_. The **First notice day** is the first day on which the short can issue a notice to deliver. Hence a person with a long position should close out before the first notice day if she does not want to take delivery. The **Last notice day** is the last day the short can issue the notice to deliver. Trading in the futures contract usually ceases a few days before the last notice day.

Delivery (for non-cash settled contracts) is usually about a 3-day process. Two days before someone with a short position intends to make delivery, she notifies the clearing house. The next business day, the exchange selects the party with a long position to take delivery. On the third day, the delivery day, the short delivers the underlying asset and the long pays the short (and the deal is confirmed).

## Forwards and Futures Pricing
Assumptions:
 - zero transactions costs
 - zero tax rates
 - agents can borrow or lend unlimited amounts at the risk-free rate of interest ($r$)
 - short-selling of the underlying asset is possible
Risk-free arbitrage opportunities are instantaneously eliminated.

### Простейший случай: forward на время $T$, non-income paying security, Spot Price now equals to the Future Price ($S = F_T$)
Стратегия: берем $S$ in cash, buy security, hold it, deliver at time $T$. Total cost:

$F = S(1 + rT)$

-- this makes the correct ("fair") price. In other words:
**"Fair" Futures Price = Spot Price + Dollar Cost of Carry = Spot Price (1 + Percent Cost of Carry)** or

$F = S + DCC = S(1 + PCC)$

Also:
- for $r$ - compound interest rate: $F = S(1+r)^T$
- for $r$ - continuously compounded rate: $F = Se^{rT}$

### Добавляем остроты: Dividends, Storage Costs and Convenience Yield
#### Dividends.
Suppose these is $N$ dividend payments of different dollar amounts $D_i$ between today and maturity date of the futures contract, payable at times $t_i$.

The correct (no-arbitrage) price is $F = [S - PV(D)](1 + rT)$, where $PV(D) = \Sigma^N_{i=1}D_i/(1 + r_iT_i)$, where $r_i$ = spot interest rate (simple rate) between today and $T_i$ and $r$ - interest rate with the "main" futures contract maturity $T$.

#### Bond Futures
In principle, the same formula works: $F = [S - PV(D)](1 + rT)$, where $S$ is the current cash-market price of the underlying (deliverable) bond, $PV(C)$ is the present value of the coupon payments on the underlying bond over the life of the futures contract, $T$ is the maturity of the futures and $r$ is the risk-free rate for maturity $T$. This formula ignores several ‘real world’ complications (e.g. accrued interest).

#### Continuous Dividends Payments
Если stocks платят фиксированные дивиденды $\delta = 2\%$ p.a., то часть заемных денег может быть выплачена из дивидендов, что снижает cost of carry. Тогда no-arbitrage price: $F = S[1 + (r_s - \delta)]T$. Also:
- compound rates: $F = S(1 + r - \delta)^T$
- continuously compound rates: $F = Se^{(r_c - \delta)T}$

### Еще нюансы: Commodity Futures

#### Investment Commodities
-- "include precious metals such as gold, silver, platinum and copper which are widely held as investment assets". Price includes the "storage (and insurance) cost" $s$ (per annum). Futures price will be $F = S[1 + (r+s)T]$

#### Production Commodities
(like agriculture and energy commodities). Нередка ситуация, когда Future Price (напр, oil) ниже Spot Price: $F < S$. В таком случае говорят, что oil futures are in *backwardation*. Объясняют т.наз. **convenience yield** $(y)$: the holder has the added advantage that they can supply their local customers if the commodity goes into short supply and hence retain customer loyalty. This "convenience" has an intrinsic value fro the holder which is referred as **convenience yield**.
Оный $y$ (такой, что $F = S[1 + (r + s - y)]$ обсчитывают ретроспективно по прошлым уровням $F$, $S$ и $r, s$, но есть понимание, что это - просто estimation, не более: there is therefore not such a close link between changes in spot and futures prices for ‘production commodities’ as there is for futures contracts on other ‘investment’ assets (e.g. stocks, stock indices, currencies, bonds, gold) – so $F$ and S$  may not move approximately dollar-for-dollar because of changes in $y$. This makes hedging ‘production commodities’ more difficult – the technical way of saying this is that ‘basis risk’ is high for commodity futures where the underlying asset is a ‘production commodity’.

##### Non-Storable Commodities
(like electricity). Почему-то свалены в кучу с commodities with high seasonality of price (like wheat). Today's fair price $F_0$ считаем исходя из двух подходов:

1. Expected price at $T$: $ES_T$ with riskiness of $R$ (т.е. инвесторы хотят прибыль $R$ на вложения в сей актив если цена будет именно $ES_T$), тогда его $PV = ES_T/(1 + RT)$
2. If the futures price quoted today for delivery and payment of the commodity is $F_0$, then a speculator could borrow cash equal to $PV = F_0/(1 + rT)$ and take a long position in the futures contract.

Then $ES_T/(1 + RT) = F_0/(1 + rT)$

Hence $F_0 =ES_T[(1 + rT)/(1 + RT)]$

### Value of a Forward Contract
Because a futures contract is marked-to-market daily and cash is credited or debited to the margin account, **a futures contract has a value of zero at the end of each trading day**. With **forward** contract, it's more interesting. Suppose:
- 25th of January ($t=0$), we initiate 6-month ($T=1/2$) forward contract on a stock at forward price $F_0 = \$90$
- at $t = 0$ no cash changes hands;
- on 25 January you agreed to exchange the underlying assets (stock) in exchange for cash payment of $F_0 = \$90$ on 25 July;
- at any future date (e.g. $t =$ *April*) you can enter a new forward contract with the same delivery date (25th July). The forward price $F_1$ for the 'new' contract entered at time $t_1$ will be different from the price of the 'old' contract $F_0 = \$90$ because of changes in the stock price between $t_0$ and $t_1$.

The question we wish to answer is: what determines the value of the ‘old’ forward contract (initiated on 25 January) each day, as this contract approaches its maturity date of 25 July?

1. Value when initiated.
at $t_0$ (25 Jan) the forward price is $F_0 = S_0(1 + rT) = \$90$ but the *value* of the long forward contract is zero, since no arbitrage opportunities exist and no cash changes hands.

2. Value at maturity.
Value of long position in 'old' forward contract at maturity: $V_T = S_T - V_0$ (заплатили $V_0$ как договаривались в январе, получили asset и тут же продали за спот-цену $S_T$, разницу в карман)

3.  Value of Forward Contract Prior to Expiration.
Imagine today is $t=$ 25 April, and $S_t = \$100$. The forward price for a "new" forward contract with the same expiration date is $F_t = S_te^{r(T-t)} = \$100 e^{0.05 (0.25)} = \$101.2578$.

Value for the "old" contract at time $t$: $V_t = [F_t - F_0]e^{-r(T-t)} = S_t - F_0 e^{-r(T-t)}$ (or $= PV['New' forward price at t - 'Old' forward price]$)

Replication portfolio (учитывая купленный 25 Jan contract at $F_0$): купить short contract по новой цене сейчас, в maturity date купить фasset по "старой" цене за $F_0 = \$90$, отдать его по "новой" (на 25 April) цене за $F_t = \$101.2578$, разницу в карман.

#### Усложняем: Underlying Asset Has a Cash Inflow
 - could be ‘dollar dividends’ on a stock, or receipts of coupons on a bond, or for commodities the ‘dollar’ convenience yield less storage costs.

If $\delta$ is the (continuously compounded) inflow (dividend yield, convenience yield - whatever), than the forward price is

$$F_t = S_t e^{(r-\delta)(T-t)}$$

and value of the "old" contract today is

$$V_t = [F_t - F_0]e^{-r(T-t)} = S_t e^{-\delta(T-t)} - F_0 e^{-r(T-t)}$$

### Stock Index Futures (SIF)
All stock index futures are settled in cash (with settlement procedures differing between the different contracts) and nearly all contracts are closed out prior to their maturity date. Cash settlement is based on the value of an index point $z$ (or the ‘contract multiple’), which is set by the exchange (for the S&P 500, $z=\$250$ and the smallest price change, a tick, is 0.1 index points, representing a \$25 change in value of one futures contract).

Future Prices считаются как обычно - "cash and carry" (здесь $\delta$ - dividend yield, proportionate, p.a):
- $F = S [1 + (r_s - \delta_s)T]$ для simple rate;
- $F = S (1 + r - \delta)^T$ для discrete compound rates;
- $F = S e^{(r_c-\delta_c)}T$ для continuously compound rates;

If the current risk-free rate $r$ is greater than the dividend yield $\delta$ then the current quoted futures price will be above the current stock price, that is $F > S$, and vice versa.

If the *futures index* on the S&P 500 is currently $F_0 = 2000$, then dollar value of one futures contract

$$V_F = z F_0 = 250 F_0 = \$500,000$$

##### Hedgig with SIF (minimum variance hedge ratio)
Если мы хотим hedge некое портфолио объемом $V_P$ c бетой относительно рынка $\beta_P$ на время $T$, самой удобной формулой для расчета количества SIF контрактов будет minimum variance hedge ratio:

$$N_F = -\frac{V_P}{V_F}\beta_P$$

К примеру, для портфолио в $V_P = \$10m$, $\beta_P = 1$, текущее значение S&P $S_0 = 2000$, futures index price $F_0 = S_0 (1 + r_s)T = 2040$ получаем $N_F = - \frac{\$10m}{(\$250)(2,040)} \beta_P = -19.6$, т.е. надо продать (short) 20 контрактов, чтобы

### FX Futures and Forwards

#### Pricing FX-Forward Contract
the Forward Rate $F$, spot FX-rate $S$ and money market interest rates in two "participating" countries (or CIP - Covered Interest Parity). With simple interest:

$$F = S \frac{(1 + r_d T)}{(1 + r_fT)}$$

$S$ and $F$ are measured as "domestic per unit of foreign currency", $r_d$ = domestic interest rate, $r_f$ = foreign interest rate, $T$ = time to maturity.

Стратегии: примем инвестора BritArb с $A = £100$. Для него варианты с инвестированием в UK под $r_d = 0.11$ или в US с конвертацией "туда-обратно" должны быть эквивалентны:

$r_d = 0.11$ (11%) - domestic rate
$r_f = 0.10$ (10%) - foreign rate
$S = 0.6667$ \$/£ ( эквивалент 1.5\$/£)
$T = 1$, investment horison

1. Стратегия 1, domestic. Вкладываем дома, все тупо: Terminal Value UK $(TV_{UK}) = £A(1 + r_d T) = £100(1.11) = £111$
2. Стратегия 2, инвестирование в US:
  - конвертим £100 в \$150 по spot rate: $\$A=£A/S=£100/0.6667(£/\$) =150\$$, вкладываем в USA
  - через год получаем: $\$A(1 + r_f T)=\$150(1.10)=\$165$
  - окрываем _сегодня_ forward contract по переводу Terminal Value US: $TV_{US} = 165\$ F = £[(A/S)(1 + r_f T)]F = £111$
 или $A(1 + r_d T) = [(A/S)(1 + r_f T)]F \Rightarrow F=S(1 + r_d)/(1 + r_f)$

Поиграемся с этой вашей CIP (Covered Interest Parity) формулой:
$F=S(1 + r_d)/(1 + r_f) \Rightarrow (F-S)/S = (r_d - r_f)T/(1 + r_f T)$. Поскольку $r_f T \ll 1$, то $(1  + r_fT) \approx 1$, сиречь:

**Forward  premium  / disscount $\approx$ interest rate differential**: $(F - S)/S \approx (r_d - r_f)T$

#### Forward Points
In the FX-market, outright forward rates are not quoted, but instead the convention is that the difference between the forward rate and spot rate $F - S$, or the forward points or forward margins are quoted, where:

*Forward Points:* $F - S = S(r_d - r_f)/(1 + r_fT)$
$=0.6727 - 0.6667 = 0.0060$ *(+60 points)*

so
*'Outright' forward rate* $F = S +$ 'forward points'
$= 0.6667 + 0.0060 = 0.6727 (£/\$)$
The forward points would usually be quoted on FX-screens for 1, 2, 3, 6, and 12 months and the value dates for the forward contracts would coincide with maturity dates for Eurocurrency deposits and loans. Given that CIP holds, the quoted forward points $F - S$ (approximately) equals the interest differential (multiplied by the spot rate).

**Мнемоника:** If $S$ and $F$ are measured as ‘currency X per unit of currency Y’ then in the forward rate equation, interest rates are $r_X$ in the numerator and $r_Y$ in the denominator

Пример: пара USDCHF (франки за доллары). CIP condition is $F/S = (1 + r_{CHF}T)/(1 + r_{USD}T)$
where $r_{CHF}$ and $r_{USD}$ are the Swiss franc and US dollar interest rates, respectively.

Complications:
- the forward rate calculated from the money market rates will have a bid–ask spread depending on which currency is being borrowed or placed on deposit in the money markets;
- CIP must reflect the day-count conventions used for domestic and foreign interest rates. For example, if the forward currency is for delivery in 90 days and the Swiss interest rate convention is ‘actual/365’ and the US convention is ‘actual/360’ then the 3-month forward rate (SFr per USD) would be calculated as:
$F/S = \frac{1 + r_{CHF}(90/365)}{1 + r_{USD}(90/360)}$

#### Pricing FX-Futures Contract
подход тот же:

- simple interest: $F = S \frac{(1 + r_dT)}{(1 + r_fT)}$
- compound interest: $F = S \frac{(1 + r_d)^T}{(1 + r_f)^T}$
- continuously compound rate: $F = S e^{(r_d- r_f)T}$
(assuming both countries have the same day-count conventions, i.e. $T = days/360$


# Fixed Income: Cash Markets
- LIBOR : London Interbank Offer Rate. Similar: Euribor (countries that use Euro), NYBOR (New York), PIBOR (Paris), FIBOR (Frankfurt), ADIBOR (Abu-Dhabi), SIBOR (Saudi/Singapore) and HKIBOR (Hogn Kong).
- OIS : Overnight Index Swap, an arrangement where a fixed rate for 3 months (say) can be swapped for the geometric average of the overnight rates (over the 3 months);
- SONIA : Sterling overnight index average. Similar: EONIA (euro overnight index average).
