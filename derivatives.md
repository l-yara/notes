Derivatives

- Venues
- **CBOE** : Chicago Board Options Exchange
- **CBOT** : Chicago Board of Trade
- **PHLX** : Philadelphia Stock Exchange 
- **Intercontinental Exchange** in London

Futures

- To be separated vs the Forwards (OTC) as:
- Fixed contract sizes and settlement dates vs Can be done for any amount, and settlement date;
- Traded on exchanges vs Supplied by intermediaries (i.e. banks);
- Credit risk eliminated by clearing house margining system (**marking-to-market**: contract value changes each day) vs Credit risk of counterparty and expensive to unwind;

Futures Markets

- Margin Accounts and Price/Position Limits:
   - **Margin Account** заводится при открытии новой позиции. На него вносится **Initial Margin**. Если рынок движется "против тебя", баланс на этом счету снижается; если баланс падает ниже **Maintenance Margin**, ты должен пополнить до уровня **Initial Margin** (ситуация называется **Margin Call**, вносимая сумма - **Variation Margin**; если до конца дня не пополнить - брокер ликвидирует позицию продежей/покупкой актива). Если рынок движется "за тебя", баланс растет; обычно в таком случае можно снимать деньги с Margin Account (но нельзя снижать below Initial Margin).
   - При сильном изменении цены возможны ситуации, когда баланс на Margin Account уйдет в $<0$. Во избежание сего устанавливается **daily price limit**:(**Limit Down**/**Limit Up**). Если цена выходит за пределы этого *circuit breaker*, торги в этот день (обычно) останавливаются, давая время пополнить Margin Account к завтрашним торгам.
   - **Position Limit** is the maximum number of contracts a speculator may hold (e.g. a maximum of $y$ contracts with no more than $z [< y]$ in any one delivery month). This prevents speculators from having undue influence on the market. Bona-fide hedgers are not subject to position limits.
- Delivery and Settlement
   - The decision on when to deliver is made by the party with the _short position_. The **First notice day** is the first day on which the short can issue a notice to deliver. Hence a person with a long position should close out before the first notice day if she does not want to take delivery. The **Last notice day** is the last day the short can issue the notice to deliver. Trading in the futures contract usually ceases a few days before the last notice day.
   - Delivery (for non-cash settled contracts) is usually about a 3-day process. Two days before someone with a short position intends to make delivery, she notifies the clearing house. The next business day, the exchange selects the party with a long position to take delivery. On the third day, the delivery day, the short delivers the underlying asset and the long pays the short (and the deal is confirmed).

Forwards and Futures Pricing

- Assumptions:
- zero transactions costs
- zero tax rates
- agents can borrow or lend unlimited amounts at the risk-free rate of interest ($r$)
- short-selling of the underlying asset is possible

Risk-free arbitrage opportunities are instantaneously eliminated.

Простейший случай: forward на время $T$, non-income paying security, Spot Price now equals to the Future Price ($S = F_T$)

- Стратегия: берем $S$ in cash, buy security, hold it, deliver at time $T$. Total cost:
   - $F = S(1 + rT)$
   - this makes the correct ("fair") price. In other words: **"Fair" Futures Price = Spot Price + Dollar Cost of Carry = Spot Price (1 + Percent Cost of Carry)** or
   - $F = S + DCC = S(1 + PCC)$
- Also:
   - for $r$ - compound interest rate: $F = S(1+r)^T$
   - for $r$ - continuously compounded rate: $F = Se^{rT}$

Добавляем остроты: Dividends, Storage Costs and Convenience Yield

- Dividends.
   - Suppose these is $N$ dividend payments of different dollar amounts $D_i$ between today and maturity date of the futures contract, payable at times $t_i$.
   - The correct (no-arbitrage) price is $F = [S - PV(D)](1 + rT)$, where $PV(D) = \Sigma^N_{i=1}D_i/(1 + r_iT_i)$, where $r_i$ = spot interest rate (simple rate) between today and $T_i$ and $r$ - interest rate with the "main" futures contract maturity $T$.
- Bond Futures
   - In principle, the same formula works: $F = [S - PV(D)](1 + rT)$, where $S$ is the current cash-market price of the underlying (deliverable) bond, $PV(C)$ is the present value of the coupon payments on the underlying bond over the life of the futures contract, $T$ is the maturity of the futures and $r$ is the risk-free rate for maturity $T$. This formula ignores several ‘real world’ complications (e.g. accrued interest).
- Continuous Dividends Payments
   - Если stocks платят фиксированные дивиденды $\delta = 2\%$ p.a., то часть заемных денег может быть выплачена из дивидендов, что снижает cost of carry. Тогда no-arbitrage price: $F = S[1 + (r_s - \delta)]T$. Also:
      - compound rates: $F = S(1 + r - \delta)^T$
      - continuously compound rates: $F = Se^{(r_c - \delta)T}$
- Еще нюансы: Commodity Futures
   - Investment Commodities
      - "include precious metals such as gold, silver, platinum and copper which are widely held as investment assets". Price includes the "storage (and insurance) cost" $s$ (per annum). Futures price will be $F = S[1 + (r+s)T]$
   - Production Commodities
      - (like agriculture and energy commodities). Нередка ситуация, когда Future Price (напр, oil) ниже Spot Price: $F < S$. В таком случае говорят, что oil futures are in *backwardation*. Объясняют т.наз. **convenience yield** $(y)$: the holder has the added advantage that they can supply their local customers if the commodity goes into short supply and hence retain customer loyalty. This "convenience" has an intrinsic value fro the holder which is referred as **convenience yield**.
      - Оный $y$ (такой, что $F = S[1 + (r + s - y)]$ обсчитывают ретроспективно по прошлым уровням $F$, $S$ и $r, s$, но есть понимание, что это - просто estimation, не более: there is therefore not such a close link between changes in spot and futures prices for ‘production commodities’ as there is for futures contracts on other ‘investment’ assets (e.g. stocks, stock indices, currencies, bonds, gold) – so $F$ and S$  may not move approximately dollar-for-dollar because of changes in $y$. This makes hedging ‘production commodities’ more difficult – the technical way of saying this is that ‘basis risk’ is high for commodity futures where the underlying asset is a ‘production commodity’.
   - Non-Storable Commodities
      - (like electricity). Почему-то свалены в кучу с commodities with high seasonality of price (like wheat). Today's fair price $F_0$ считаем исходя из двух подходов:
1. Expected price at $T$: $ES_T$ with riskiness of $R$ (т.е. инвесторы хотят прибыль $R$ на вложения в сей актив если цена будет именно $ES_T$), тогда его $PV = ES_T/(1 + RT)$

2. If the futures price quoted today for delivery and payment of the commodity is $F_0$, then a speculator could borrow cash equal to $PV = F_0/(1 + rT)$ and take a long position in the futures contract.

Then $ES_T/(1 + RT) = F_0/(1 + rT)$

Hence $F_0 =ES_T[(1 + rT)/(1 + RT)]$

Value of a Forward Contract

- Because a futures contract is marked-to-market daily and cash is credited or debited to the margin account, **a futures contract has a value of zero at the end of each trading day**. With **forward** contract, it's more interesting. Suppose:
- 25th of January ($t=0$), we initiate 6-month ($T=1/2$) forward contract on a stock at forward price $F_0 = \$90$
- at $t = 0$ no cash changes hands;
- at any future date (e.g. $t =$ *April*) you can enter a new forward contract with the same delivery date (25th July). The forward price $F_1$ for the 'new' contract entered at time $t_1$ will be different from the price of the 'old' contract $F_0 = 90$ because of changes in the stock price between $t_0$ and $t_1$.
- on 25 January you agreed to exchange the underlying assets (stock) in exchange for cash payment of $F_0 = \$90$ on 25 July;

The question we wish to answer is: what determines the value of the ‘old’ forward contract (initiated on 25 January) each day, as this contract approaches its maturity date of 25 July?

- Value when initiated: zero
   - at $t_0$ (25 Jan) the forward price is $F_0 = S_0(1 + rT) = \$90$ but the *value* of the long forward contract is zero, since no arbitrage opportunities exist and no cash changes hands.
- Value at maturity: a long position in 'old' forward contract at maturity: $V_T = S_T - V_0$
   - заплатили $V_0$ как договаривались в январе, получили asset и тут же продали за спот-цену $S_T$, разницу в карман
-  Value of Forward Contract Prior to Expiration (value for the "old" contract at time $t$): $V_t = [F_t - F_0]e^{-r(T-t)} = S_t - F_0 e^{-r(T-t)}$ (or PV['New' forward price at t - 'Old' forward price])
   - Imagine today is $t=$ 25 April, and $S_t = 100$. The forward price for a "new" forward contract with the same expiration date is $F_t = S_te^{r(T-t)} = 100 e^{0.05 (0.25)} = 101.2578$.
   - Replication portfolio (учитывая купленный 25 Jan contract at $F_0$): купить short contract по новой цене сейчас, в maturity date купить asset по "старой" цене за $F_0 = 90$, отдать его по "новой" (на 25 April) цене за $F_t = 101.2578$, разницу в карман.

Усложняем: Underlying Asset Has a Cash Inflow

- could be ‘dollar dividends’ on a stock, or receipts of coupons on a bond, or for commodities the ‘dollar’ convenience yield less storage costs.
- If $\delta$ is the (continuously compounded) inflow (dividend yield, convenience yield - whatever), than the forward price is
- $$F_t = S_t e^{(r-\delta)(T-t)}$$
- and value of the "old" contract today is
- $$V_t = [F_t - F_0]e^{-r(T-t)} = S_t e^{-\delta(T-t)} - F_0 e^{-r(T-t)}$$

Stock Index Futures (SIF)

- All stock index futures are settled in cash (with settlement procedures differing between the different contracts) and nearly all contracts are closed out prior to their maturity date. Cash settlement is based on the value of an index point $z$ (or the ‘contract multiple’), which is set by the exchange (for the S&P 500, [;z=\$250;] and the smallest price change, a tick, is 0.1 index points, representing a [;\$25;] change in value of one futures contract).
- Future Prices считаются как обычно - "cash and carry" (здесь $\delta$ - dividend yield, proportionate, p.a):
- $F = S [1 + (r_s - \delta_s)T]$ для simple rate;

 - $F = S (1 + r - \delta)^T$ для discrete compound rates;

- $F = S e^{(r_c-\delta_c)}T$ для continuously compound rates;

If the current risk-free rate $r$ is greater than the dividend yield $\delta$ then the current quoted futures price will be above the current stock price, that is $F > S$, and vice versa.

If the *futures index* on the S&P 500 is currently $F_0 = 2000$, then dollar value of one futures contract

$$V_F = z F_0 = 250 F_0 = \$500,000$$

Hedging with SIF (minimum variance hedge ratio)

- Если мы хотим hedge некое портфолио объемом $V_P$ c бетой относительно рынка $\beta_P$ на время $T$, самой удобной формулой для расчета количества SIF контрактов будет minimum variance hedge ratio:
- $$N_F = -\frac{V_P}{V_F}\beta_P$$
- К примеру, для портфолио в [;V_P = \$10m;], [;\beta_P = 1;], текущее значение S&P $S_0 = 2000$, futures index price $F_0 = S_0 (1 + r_s)T = 2040$ получаем $N_F = - \frac{\$10m}{(\$250)(2,040)} \beta_P = -19.6$, т.е. надо продать (short) 20 контрактов

FX Futures and Forwards

- Pricing FX-Forward Contract
   - the Forward Rate $F$, spot FX-rate $S$ and money market interest rates in two "participating" countries (or CIP - Covered Interest Parity). With simple interest:
   - $$F = S \frac{(1 + r_d T)}{(1 + r_fT)}$$
   - $S$ and $F$ are measured as "domestic per unit of foreign currency", $r_d$ = domestic interest rate, $r_f$ = foreign interest rate, $T$ = time to maturity.
   - Стратегии: примем инвестора BritArb с $A = £100$. Для него варианты с инвестированием в UK под $r_d = 0.11$ или в US с конвертацией "туда-обратно" должны быть эквивалентны:
      - $r_d = 0.11$ (11%) - domestic rate
      - $r_f = 0.10$ (10%) - foreign rate
      - [;S = 0.6667 £/\$;] ( эквивалент [;1.5\$/£;])
      - $T = 1$, investment horison
1. Стратегия 1, domestic. Вкладываем дома, все тупо: Terminal Value UK $(TV_{UK}) = £A(1 + r_d T) = £100(1.11) = £111$

2. Стратегия 2, инвестирование в US:

- конвертим £100 в [;$150;] по spot rate: [;\$A=£A/S=£100/0.6667(£/\$) =150\$;], вкладываем в USA
- через год получаем: [;\$A(1 + r_f T)=\$150(1.10)=\$165;]
- окрываем _сегодня_ forward contract по переводу Terminal Value US: [;TV_{US} = \$165 F = £[(A/S)(1 + r_f T)]F = £111;]
- или $A(1 + r_d T) = [(A/S)(1 + r_f T)]F \Rightarrow F=S(1 + r_d)/(1 + r_f)$

Поиграемся с этой вашей CIP (Covered Interest Parity) формулой:

- $F=S(1 + r_d)/(1 + r_f) \Rightarrow (F-S)/S = (r_d - r_f)T/(1 + r_f T)$. Поскольку $r_f T \ll 1$, то $(1  + r_fT) \approx 1$, сиречь:
- **Forward  premium  / disscount [;\approx;] interest rate differential**: [;(F - S)/S \approx (r_d - r_f)T;]

Forward Points

- In the FX-market, outright forward rates are not quoted, but instead the convention is that the difference between the forward rate and spot rate $F - S$, or the forward points or forward margins are quoted, where:
- *Forward Points:* $F - S = S(r_d - r_f)/(1 + r_fT)$
- $=0.6727 - 0.6667 = 0.0060$ *(+60 points)*
- so
- *'Outright' forward rate* $F = S +$ 'forward points'
- \[= 0.6667 + 0.0060 = 0.6727 (£/\$)\]
- The forward points would usually be quoted on FX-screens for 1, 2, 3, 6, and 12 months and the value dates for the forward contracts would coincide with maturity dates for Eurocurrency deposits and loans. Given that CIP holds, the quoted forward points $F - S$ (approximately) equals the interest differential (multiplied by the spot rate).
- **Мнемоника:** If $S$ and $F$ are measured as ‘currency X per unit of currency Y’ then in the forward rate equation, interest rates are $r_X$ in the numerator and $r_Y$ in the denominator
- Пример: пара USDCHF (франки за доллары). CIP condition is $F/S = (1 + r_{CHF}T)/(1 + r_{USD}T)$
- where $r_{CHF}$ and $r_{USD}$ are the Swiss franc and US dollar interest rates, respectively.
- Complications:
- the forward rate calculated from the money market rates will have a bid–ask spread depending on which currency is being borrowed or placed on deposit in the money markets;
- CIP must reflect the day-count conventions used for domestic and foreign interest rates. For example, if the forward currency is for delivery in 90 days and the Swiss interest rate convention is ‘actual/365’ and the US convention is ‘actual/360’ then the 3-month forward rate (CHF per USD) would be calculated as:
$$F/S = \frac{1 + r_{CHF}(90/365)}{1 + r_{USD}(90/360)}$$

Pricing FX-Futures Contract

- \- подход тот же:
- simple interest: $F = S \frac{(1 + r_dT)}{(1 + r_fT)}$
- compound interest: $F = S \frac{(1 + r_d)^T}{(1 + r_f)^T}$
- continuously compound rate: $F = S e^{(r_d- r_f)T}$

(assuming both countries have the same day-count conventions, i.e. $T = days/360$

Fixed Income: Cash Markets

- Definitions
   - **FRA** (Forward Rate Agreement) convention: quoted as "simple" rates on the *actual/360* base
   - LIBOR : London Interbank Offer Rate.
      - Similar: 
- Euribor (countries that use Euro), 
- NYBOR (New York), 
- PIBOR (Paris), 
- FIBOR (Frankfurt), 
- ADIBOR (Abu-Dhabi), 
- SIBOR (Saudi/Singapore) 
- HKIBOR (Hogn Kong).
   - OIS : Overnight Index Swap, an arrangement where a fixed rate for 3 months (say) can be swapped for the geometric average of the overnight rates (over the 3 months); the rate is very close to being a risk-free rate.
   - SONIA : Sterling overnight index average. Similar: EONIA (euro overnight index average).
   - **PVBP** : Price Value of Basis Point. The amount of movey (value) on which the price of derivative change by changing of the underlying rate by 1bp
   - REPO (or more accurately a ‘sale and repurchase agreement’) : a form of collateralised borrowing.
      - A borrower ‘sells’ securities (e.g. T-bills or T-bonds) which he holds, to a counterparty (e.g. broker) for their current market price in exchange for cash. He also simultaneously agrees to ‘buy back’ the securities the next day at a slightly higher price (this price increase constitutes an overnight part of the REPO rate).

This makes a secure loan so the repo rate is generally slightly below the Fed Funds rate
- *reverse repo* : same deal from the couterparty (i.e. the party which supplies cash)' view
- *overnight repo* : rolled over each day;
- *term repos* : repo for longer then one day

*effective federal funds rate* : a weighted average of the rates in brokered transactions (with the weights proportional to amounts loaned) in the Fed Funds overnight (unsecured lending) market

*pure discount bonds* have a single payout, but have a maturity greater than 1 year

Interest Rates (**FRA** or Forward Rate Agreement): one party agrees to receive a floating interest rate (e.g. LIBOR) in exchange for paying a known fixed rate of interest (of say 3% p.a.), starting at a specific date in the future. By convention, it is quoted as "simple" rates on the *actual/360* base

- Forward Rates - definitions for the *forward rate* starting in year $m$ until year $n$ ($f_{m, n}$): with $n > m$ and both $n$ and $m$ expressed in years or fractions of a year using ‘actual/360’ convention for pricing FRAs:
- Simple Rate: $f_{n,m} = \frac 1 {n - m} \big[ \frac{r_n n - r_m m}{1 + r_m m} \big]$
- Compound Rate:  $f_{n,m} = \frac 1 {n - m} \big[ \frac{(1 + r_n)^n}{(1 + r_m)^m} \big]^\frac1{n-m} - 1$
- Continuously Compound Rate: $f_{n,m} = \big[ \frac n {n - m}\big] r_n -  \big[ \frac m {n-m} \big] r_m = \big[ \frac{n r_n - m r_m}{n-m} \big]$

Arithmetically, if the yield curve for spot rates between times $m$ and $n$ is upward sloping then the forward rate $f_{m,n}$ will be above the spot rate $r_n$ and vice versa

Fixed Income: Bonds

- for a **pure discount bond**: примем один payment $M$ через время $T$, нынешняя цена (**observed market price** AKA **clean price** AKA **invoice price**) $P_0$: $$P_0 = \frac{M}{(1+r)^T}$$
   - засада в том, что при фиксированной $M$ и цене (clean price) $P_0$, определяемой спросом/предложением, обсчитывается именно **spot rate (yield)**: $r = \big[\frac M {P_0} \big]^{1/T} - 1$
- **coupon-paying bonds**: a stream of cash (coupons) $C$ each (say) year over the remaining life of the bond with a known final payment (**par value** AKA **maturity value**) $M$. Понятно, что рассматривать будем как набор из нескольких *pure discount bond*. Параметры:
   - Существует т.наз. **Interest Yield** (AKA **Coupon Yield** or **Flat Yield**): $\frac{\text{Annual Coupon}}{\text{Current Clean Price}} * 100\text{\%} $. Именно ее цитируют в прессе, но она:
 -- ignores any capital gains which occur if the bond is purchased at a price below its maturity value $M$;
 -- ignores ‘interest-on-interest’ from coupon payments.
Потому пользуют...
   - **Yield To Maturity (YTM)** AKA **Redemption Yield**: $$P = \frac{C_1}{(1 + y)} + \frac{C_2}{(1 + y)^2} + ... + \frac{C_T}{(1 + y)^T} + \frac{M}{(1 + y)^T}$$

вводим **Annuity value** как $A(y, T) = \frac{1-\big(\frac1{(1 + y)^T}\big)}y = \big[\frac1y - \frac1{y(1+y)^T}\big]$ (a present value of £1 paid at the end of each year, for $T$ years using the YTM as the discount rate), тогда $$P = C * A(y, T) + \frac{M}{(1+y)^T}$$
   - понятно, что если **coupon rate** $C/M$ = YTM, то цена бонда $P$ строго равна *maturity value* $M$
   - столь же понятно, что цена $P$ и yield $y$ связаны обратной (притом нелинейной) зависимостью. Формула для YTM соответствует таковой для **Internal Rate of Return (IRR)**, посему удобно считать by Excel's `IRR` in-built formula
- также существуют "вечные" (AKA **perpetuities**) bonds which pay coupons and are never redeemed
- the **term structure of interest rates**: the shape of the **yields curve** (a cost of borrowing/lending money over a fixed maturity, started imeediately).
   - determined by the market's expectations about price inflation in future years. If today, inflation is expected to be higher (lower), in each future year then the yield curve will be upward (downward) sloping.
      - обычно существует большая ($k >> 0.9$) корелляция между изменениями yields по годам (т.е. если, скажем $y_2$ увеличилась на 1%, то и $y_1$, и $y_3$, и другие увеличиваются на "приблизительно  столько же" - например, на 0.95%). Если все значения изменяются одинаково, говорят о **parallel shift** in the yields curve
      - **Duration** $D$ - ВНЕЗАПНО первая производная $P$ по YTM $y$, so $\text{% change in bond price} \approx -D \times \text{(absolute change in YTM)},$ или $\text{% }dP / P \approx -D dy$
         - если сказали, что текущая цена $P$ равна $\text{\\$1,000}$ и duration $D = 5$, при $y$ = 6%, то при YTM moves from 6% to 5.5% over the next week, $dP = 2.5$% (YTM уменьшилась на 0.5% => цена выросла на 2.5% - в формуле минус!)
         - т.к. реальный график $P$ от $y$ - гипербола, истинное (true) изменение цены будет чуть отличаться, от полученного по формуле $D$, но для аппроксимации при небольших изменениях - сойдет
         - для портфолио из $N$ bonds: $D_p = \sum_{i=1}^N \omega_i D_i$ 
where $\omega_i$ - weitghts: $0 < \omega_i < 1$ and $\sum \omega_i = 1$
         - для $n$ - period coupon paying bond (annual payments): $D = \frac{[PV(C_1)1 + PV(C_2)2 + ... + PV(C_n +M)n]}{P}$ where $PV(C_t) = C_t/(1 + y)^t$
         - если изменения в цене небольшие, то $\frac{dP}{P} = -D\frac{dy}{(1+y)} = -(MD)dy$, where
**modified duration** $MD = D / (1 + y)$. Тогда для 1bp (0.01%) изменения в YTM: $dy = 0.0001( = 1/10000)$, получаем
**price value of a basis point (PVBP)** or **duration value of a basis point**: $dP\text{(for 1 bp)} = \frac{MD \times P}{10,000}$
      - **Convexity** $X$ - характеристика кривизны (curvature) of the price-yield relationship
         - расчет: пользуют разложение Тейлора второго порядка. Как-то так (c учетом купонных платежей $CF_t$ - cach flow at $t$): $$X = \frac{\sum_{t=1}^N t (t + 1) CF_t/(1+y)^t}{P(1 + y)^2}$$
      - итого: $\frac{dP}{P} \approx -MD (dy) + \frac12 X (dy)^2$
      - the price change calculated using duration and ‘duration plus convexity’ are both approximations to the actual ‘true’ price change. The actual (true) price change will differ if either the change in yield is large or there is a **non-parallel shift** in the yield curve

Fixed Income: Futures Contracts

- **Interst Rate Futures (IRF)**: используются to hedge risk изменений interest rate (yields), каковые  affect the market value of ‘interest sensitive’ cash market assets
   - напр. **3-months eurodollar futures contract**:
- underlaying asset: a deposit which pays the (90-days) LIBOR Eurodollar (EURUSD) rate. Day count conventions is `actual/360`
- contract size: $\text{\\$}$1m, 90-days deposit (as deposit is intransferrable, the futures contract is settled in cash based on the contract size of $1m)

say, it's 15 April $(t=0)$, we buy June-Eurodollar futures contract, which matures on 28 June. Контракт фиксирует на 90 дней с 28 June по 26 Sep the **forward discount rate** $d_j = 8\text{\%}$

- the quoted price is not a "dollar price" but rather an index known as **IMM Index**, linked to the *forward discount rate* $d_j$: $IMM_0 = 100 - d_j = 100 - 8 = 92$
- tick value (per 1 bp): $\text{\\$1m} \times (0.01/100) \times (90 / 360) = \text{\\$}25$
   - т.е. стоимость (value) одного контракта будет расти на $\text{\\$25}$ при росте of future discount rate by 0.01%
- хотя квоты указываются в IMM (напр, $IMM=92$, при анализе используют еще и (confusing) **future price** (in dollars): полезная вещь для связывания `future price` c `future yield`: 
$F_0 = 100 - (100 - IMM_0) (90/360) = 100[1-(d_j/100)(90/360)] = \text{\\$98}$
 (per $\text{\\$100}$ face value in the contract)
   - т.е. for a ‘notional’ delivery of a $\text{\\$1m}$, 90-day deposit and therefore the ‘value of one futures contract’ (or ‘invoice price’ or ‘contract price’) is
$V_F = \text{\\$1}m(F_0/100) = \text{\\$1m}(\text{\\$98}/\text{\\$100}) = \text{\\$980}$

**Sterling 3-months futures contract**

- underlying asset: sterling 3-month deposit with a notional value of £500,000 per contract
- future price: $F_0 = (100 - \text{quoted forward interest rate,% p.a.}) = 100 - f_{12}$
- tick size: £12.50 per contract per 1bp (0.01%)

**T-Bill Futures**: contract size is $\text{\\$1m}$ of 90-days T-bills. Tick value is $\text{\\$25}$ per 1bp

- by convention, the *quoted IMM index* is based on delivery of 90-day bill (say, a bill delivered 25 Sep can be redeemed at the Central Bank, "the Fed" on 24 December)

**Pricing IRF**: at $t=0$, the _future_ price is $F = \frac M {1 + f_{12}t_{12}}$, где $M$ - maturity value, $f_{12}$ - forward rate от $t_1$ до $t_2$; $t_{12}$ - собственно сам этот промежуток (see [forward rates formula](https://checkvist.com/checklists/710278/tasks/45324961))

- обсчет - через эквивалентыне портфолио. Считаем стоимость фьючерса, который через $t=1$ год delivers 1-year T-bill, который в свою очередь еще через год (в момент $t=2$ принесет $M$ денег. Считаем спотовую цену $S$ на момент $t=0$: 
 - Портфолио 1: Взять $S$ денег, положить на два года под $r_2$ годовых, получить $M$. По формуле для forward rates получим: $S = \frac M{1 + r_2 t_2} = \frac M {(1+r_1t_1)(1 + f_{12}t_{12})}$
- Портфолио 2: в $t=0$ купить 1-year T-bill c maturity value $F$ + go long по контракту, который мы пытаемся price (1-year futures contract with quoted price $F$ which delivers 1-year T-bill with maturity at $t=2$ and face value $M$). Т.к. фьючерс стОит 0 в $t=0$, цена сего портфолио равна цене T-bill: $S = \frac F {(1 + r_1 t_1)}$. 

Тогда $S = \frac M {(1+r_1t_1)(1 + f_{12}t_{12})} = \frac F {(1 + r_1 t_1)} \implies F =  \frac M {(1 + f_{12}t_{12})}$

**Спекуляция по IRF**

1. The futures position provides leverage, since you do not pay the futures invoice price at inception: you merely have to provide a relatively small ‘good faith deposit’ for your initial margin payment (which usually pays a competitive interest rate)

2. For any *fixed income futures* contract, the key feature is the *inverse relationship* between interest rates and futures prices. If you close out a long futures position before maturity then the profit on each futures contract is $F_1 - F_0$. Hence, if you want to speculate on a future fall in interest rates, then today you buy (go long) an interest rate futures contract (e.g. a T-bill futures contract or a Eurodollar futures contract). If interest rates fall, the futures price rises and hence you make a profit from your long position when you close out by selling the futures contract at a higher price.

**Spread Trades on IRF**

- An **intracommodity long spread** position consists of a long position in one nearby futures contract (i.e. with a short maturity date $t_1$) and a short position in the far contract (i.e. with a longer maturity date $t_2$). Both contracts are on the same underlying (e.g. either 90-day T-bill futures or 3-month Eurodollar futures)
- Price: $F = 100 - f_{12} \approx 100 - \big(\frac{t_2}{t_{12}}r_{2} - \frac{t_1}{t_{12}}r_1\big)$
- Used to speculate on the changes in the shape of the yield curve:  
- if the yield curve undergoes a parallel shift (either up or down) there will be little or no change in value of a spread-futures position.
- If you hold a ‘long-spread’ then you gain when the yield curve becomes steeper (say, the 9-month spot rate moves up more than the 6-month rate, which in turn increases more than the 3-month rate).
- If you hold a ‘short spread’ (i.e. short March-futures, long June-futures,), you gain when the yield curve becomes less steep (i.e. flatter).

**Расчет (лаба)** `futures price`, `discount rates` и `IMM index` по `spot yield` и `forward yields`

- Дано: сейчас 25 May, мы считаем T-bill futures prices и IMM-index quotes for the June and September IRF contracts, используя только known term structure of spot yields $r$ at $t=0$ (compound rates): 
- $r_{0,32} = 0.09$ ($t_{0,32} = 32/365$) - matures in June
- $r_{0,122} = 0.10$ ($t_{0,122} = 122/365$) - matures in September
- $r_{0,212} = 0.12$ ($t_{0,212} = 212/365$) - matures in December
Используя (compound) spot rates, считаем forward rates:
- $(1 + r_{0,32})^{32/365}(1 + f_{32,122})^{90/365} = (1 + r_{0, 212})^{122/365} \implies f_{32,122} = 0.1036$ 
- $(1 + r_{0,122})^{122/365}(1 + f_{122,212})^{90/365} = (1 + r_{0, 212})^{212/365} \implies f_{122,212} = 0.1477$

Note: because the spot yield curve is upward sloping the forward-rate curve lies above the spot-rate curve (e.g. $f_{32,122}$ = 0.1036 > $r_{0,122}$ = 0.10).

Каждый T-bill futures contract приносит (delivers) 90-дневный T-bill, no-arbitrage futures prices are:
- $F_{32,122} \text{(June Futures)} = \frac{\\$ 100} {(1 + f_{32,122})^{90/365}} = \text{ \\$97.60 (per \\$100 nominal)}$
- $F_{122,212} \text{(Sep Futures)} = \frac{\\$ 100} {(1 + f_{122,212})^{90/365}} = \text{ \\$96.66 (per \\$100 nominal)}$

Теперь the *quoted* (futures) discount rate $d_f$:
$$F = 100\big[ 1- \big(\frac{d_f} {100}\big) \big(90/360\big) \big] \text{ and }IMM = 100 - d_f$$ 
(**note**: мы используем T-bill futures convention of `actual/360` and assume 90-days bill is delivered)

- June - futures: $d_f(32, 122) = 9.603 \text{% and } IMM(32, 122) = 90.396$
- Sept - futures: $d_f(122, 212) = 13.358 \text{% and } IMM(122,212) = 86.641$

**PVBP** : Price Value of Basis Point. The amount of movey (value) on which the price of derivative change by changing of the underlying rate by 1bp. For instance, if we have $2m$ loan based on 6-month (180 days) LIBOR, $PVBP\text{(6m loan)} = \text{\\$}2m (0.01/100) (1/2) = \text{\\$100}$

Хеджирование завязано на обратной зависимости: future price $F$ увеличивается при росте rate и уменьшается при снижении $\implies$ чтобы закрыться от увеличения процентов (напр. имея на руках кредит - loan) - **продаем** futures; чтобы hedge риск снижения процента (например, имея депозит под плавающую ставку) - **покупаем** futures. Количество контрактов можно считать через PVBP или через duration based hedge ratio.

- или: At $t_0$, a hedger can ‘lock in’ the (implied quoted) forward rate $f_{12}$ applicable between any two future periods $t_1$ and $t_2$, by taking a position in futures contracts today. These futures contracts are (usually) closed out before the maturity date (at $t_1$).

Options

- Market Organization
   - Expiration Dates:  fixed by the exchange
- stock options are traded for expiration up to 4.30 p.m. (Central Time) on the third Friday of the expiry month. The holder of a long call on a stock can instruct his broker to exercise the option up until 4.30 p.m. on that Friday. The broker then has until 10.59 p.m. the next day (Saturday) to notify the exchange that exercise will happen.
- on individual stocks usually extend to about 9 months (with some exceptions): 
  -- LEAPS (Long Term Equity Anticipation Securities), which are primarily options on around 500 individual (different) stocks (but some are also on stock indices), have expiration dates of about 3 years ahead. 
 -- FLEX (short for ‘flexible’) options on stocks and stock indices can have any expiration date of up to 5 years ahead and in addition they permit the purchaser to set any exercise price and can be European or American.

Prices

- for example, might be set at $2.50 intervals when the underlying stock price is less than $25, at $5 intervals when the stock price is between $25 and $200 and at $10 intervals for a stock price over $200. Strike prices are set either side of the current stock price and as the stock price moves up or down, options with new strike prices are added by the exchange.

Margins: set by exchange

- US options markets: Options Clearing Corporation (OCC) standardises contracts and acts as an intermediary, effectively creating two separate contracts
   - buyer: has no margin requirement with the OCC since the most she can lose is the option premium, which is paid in full at the outset of the contract.
   - writer: required to post a margin payment (usually in cash and equal to at least 30% of the value of the stocks underlying the option contract plus the call premium). There is also a maintenance margin which might be set at a minimum of 15–25% of the value of the stocks underlying the option contract.
      - (initial margins vary depending on whether one has a naked (uncovered) position (i.e. no offsetting holding in the underlying stocks) or a covered/hedged position. The latter is less risky and involves less initial margin. Margin positions on strategies such as straddles, spreads etc. are governed by special rules described in publications on the CBOE website)
      - Example: a written call on a stock, where the initial margin is 30% of the value of the stock, plus the option premium. However, if the call is out-of-the-money $(S_0 < K)$ then the margin is reduced by $K-S_0$. If $S_0 = 110$, $K = 120$ (i.e. out-of-the-money) and $C_0=\\$2$, and each call is written on 100 stocks, then the margin payment would be $\\$2,500 = 100[0.3S_0 + C_0 - (K - S_0)]$. If the call had been in-the-money or at-the-money the deduction of $K - S_0$ would not be allowable.
      - Option prices on a stock index are less volatile and hence (uncovered) written index options would have a margin requirement based on, say, 15% of the dollar value of the stock-index, rather than the 30% for individual stock options.
- non-US: ???

Limits: set by exchange for a trader to open (**position limit**) or excercise in five consecutive business days (**excersize limit**) _on the same side of the market_ (like long calls and short puts). Usually these two are equal - say, 250,000 contracts

Usage: страховка от потери стоимости (когда держим stocks + покупаем put), спекуляции

Prices: **Intrinsic Value (IV)** and **Time Value (TV)**

- Разделение работает для American Options (т.е. теми, которые можно excercise immediately). Идея в том, что если текущей спот In The Money, то часть цены (а именно, $|K-S_0|$) можно вернуть сей момент. Эта часть называется Intrinsic Value
- Long Calls: нынешняя цена $C_0$; тогда $IV \equiv max\\{S_0 - K, 0\\}; TV \equiv C_0 - IV$
- Long Puts: нынешняя цена (premium) $P$; тогда $IV \equiv max\\{K - S_0, 0\\}; TV \equiv P - IV$

Usage

- Stock Index Options (SIO)
- used hedge the market (systematic) risk of a *diversified portfolio* of stocks. The most popular in the USA are written on the S&P 500 (SPX), the S&P 100 (OEX), the Nasdaq 100 (NDX) and the Dow Jones Industrial Index (DJX). These contracts are European, except for options on the S&P 100, which are American.
- cash settled; one option contract is to buy or sell $z$ times the index at the specified strike price. The index must be translated into dollar amount; say for S&P 500 the value of one index point is taken $z = \\$100$ so if current S&P 500 $S_0 = 2,000$, the dollar value of index is $V_1 = zS_0 = \\$200,000$
- the dollar payoff for call is $\text{\\$ }max(S_T - K, 0)$; for put $\text{\\$ }max(K - S_T, 0)$

Protective Put: form of insurance

- if we hold diversified stock portfolio worth $V_S = \\$4m$, whose composition mirrors the S&P 500 (i.e. $\beta_P = 1$) and fear a fall in the overall stock market, we can limit the downside risk by purchasing index puts. If the S&P 500 index currently stands at $S_0 = 2,000$ (index points), then to protect the portfolio we should purchase $N_P$ index-puts:
$N_P =\frac{\text{\\$-value of stock portfolio}}{\\$100 \times S_0(index)}\beta_P = \frac{V_P}{V_I}\beta_P = 20$
If index falls by 400 pts (20%) to $S_T = 1600$, our portfolio will loose $\\$800,000$ but puyoff from the 20 contracts will be 
$\\$800,000 = \text{20 contracts} \times \text{400 points} \times \text{\\$100 per index point}$, however, we must consider premium: if the put premium paid is $P = 50$ index points, the 20 put contracts would have cost $\text{\\$100,000} = \text{20 contracts} \times \text{\\$100} \times \text{50 index points}$

Put-Call Parity: European Options

- Put–call parity is an arbitrage relationship between the (European) put premium $P$, the call premium $C$, the stock price $S$, and holding an amount of cash equal to $Ke^{-rT}$ in a risk-free asset (for continuously compounded interest rates; the equivalent expression using compound rates is $K/(1+r)^T$):
$$S + P = C + Ke^{-rT}$$
(доказательство - тупо разбираем оба портфолио для случаев $S_T>K$ и $S_T < K$

Guaranteed Bond: строится из stock + put option / bond + call option. Через время $T$ мы забираем прибыль, если рынок идет "за нас", но имеем гарантированный минимальный return, если рынок двинулся "против нас"

Black–Scholes Model

- For Call option: $C = SN(d_1) - N(d_2)Ke^{-rT}$
- For Put option: $P = N(-d_2)Ke^{-rT} - SN(-d_1)$
- $N(d)$ - *cumulative* probability distribution function (NORMSDIST in Excel)
   - $N(-\infty) = 0$; $N(0) =0.5$; $N(\infty) = 1$ (площать под графиком нормального распределения), попарно $N(-1.96) = 0.025 \implies N(1.96) = 0.975$;
- $d_1 = \frac{ln(S/K) + (r+\sigma^2/2)T}{\sigma \sqrt{T}}$, $d_2 = d_1 - \sigma\sqrt{T} = \frac{ln(S/K) + (r-\sigma^2/2)T}{\sigma \sqrt{T}}$
- $r$ - risk-free rate of interest for the time horison $T$ (continuously compounded)
- $S$ - current stock price
- $K$ - strike price for option
- $T$ - time to maturity (as proportion of a year, usually measured using trading days: $T = \text{number of trading days to maturity} / 252$, as there are approximately 252 trading days in a year: Monday–Fridays and excluding ‘national’ holidays)
- $\sigma$ - annual standard deviation of the (continuously compounded) return on the stock AKA volatility

Delta Hedging

- Option's delta: the ratio of the number of stocks to the number of options required to set up the hedge
for a call: $\Delta_c = \frac{\text{Change in option price}}{\text{Change in stock price}} = \frac{C_1-C_0}{S_1 - S_0}$

обычно это значение (при малых отклонениях цены!) меньше единицы (и растет по мере роста цены - см. график). Тогда можно хеджировать набор проданных (written) опционов покупкой акций. Пример: 
- продали $z_c = 100$ call опционов при $S_0 = \text{\\$}100$, $C_0 = \text{\\$}10$ и $\Delta_c = 0.4$
- хеджируемся покупкой $z_s = \Delta_c * z_c = 0.4 * 100 = 40$ shares. Тогда при росте акций на $\text{\\$}1$ опционы вырастут в цене на $\text{\\$}0.4$ каждый - получаем loss на $\text{\\$}40$. Но при этом цена акций тоже вырастет на те же $z_s *  \text{\\$}1 = \text{\\$}40 \implies$ имеем т.наз. **delta-neutral** position
- по той же Black-Scholes, если в day 2 цена выросла до $\text{\\$}110$, дельта тоже будет расти, например, до $\Delta_c = 0.5$. Тогда придется проводить **rebalancing**: докупить "лишние" $(0.5-0.4) \times 100 = 10$ stocks (доводя общее количество акций до 50), чтобы сохранить delta-hedging. Такие финты называются **dynamic delta hedging**

Implied Volatility: идея, что мы можем вытащить значение volatility $\sigma$, наблюдая цену на опционы и подставляя в B-S формулу.

- Обычно считаем чем-то вроде итерационного Ньютона-Рафсона. Для пущей точности берем несколько значений (по ценам опционов на разное $T$) и усредняем

Trading Volatility:  если текущая оценка volatility ($\sigma$) завышена или занижена, можем прикупить underpriced/продать overpriced опционы (захеджировав возможное изменение цены by delta hedging). Помним, что цена опциона возрастает с возрастанием $\sigma$!

Стратегии

- Bull Spread: пытаемся сыграть на повышении курса, но хотим прикрыться от потери при понижении и не хотим слишком переплачивать за "чистый" опцион. Варианты:
- Bull Spread With Calls: покупаем (long) call для $K_1$ на некую дату + продаем (short) call для $K_2 > K_1$ на ту же дату. Т.к. $C_2 < C_1$, мы вкладываем фиксированную сумму $C_1 - C_2$ at $T_0$. Получаем в maturity date $T$:
   - если $S_T < K_1$: обе Out Of Money (OTM), наши потери ограничены фиксированной суммой $C_1 - C_2$ независимо от того, наскольку упала цена
   - если $K_1 < S_T < K_2$: вторая OTM, но первая In-The-Money (ITM) и начинает приносить доход в $S_T - K_1$ (но учитываем вложения в $C_1 - C_2$ на старте)
   - если $K_2 < S_T$: обе ITM и доход по первой теперь компенсируется потерей по второй, т.е. наша прибыль ограничена $K_2 - K_1$ (минус все те же  $C_1 - C_2$ на старте) независимо от того, насколько высоко поднялась цена
- Bull Spread With Puts: покупаем (long) put для $K_1$ на некую дату + продаем (short) put для $K_2 > K_1$ на ту же дату. Т.к. $C_2 < C_1$, мы вкладываем фиксированную сумму $C_1 - C_2$ at $T_0$. Варианты похожи на предыдущий

Bear Spread: аналогичный трюк для понижения цены. Варианты:

- Bear Spread With Calls: short call at $K_1$ + long call at $K_2 > K_1$
- Bear Spread With Puts: long put at $K_1$ + short put at $K_2 > K_1$

Прочие варианты с бОльшим количеством наворотов: Straddle, Strangle, Butterfly and Condor. Обычно ставим на "цена значительно уйдет или вниз, но точно не останется на указанном уровне" либо наоборот "цена точно останется на указанном уровне" (а я заберу премию за проданный набор опционов)
