function secilen_indeks = BM_20_066Rulettekerlegi(fitness_degerleri)
    % Gelen fitness de�erleri �zerinden se�im yap
    uygunluk_toplami = sum(fitness_degerleri);
    
    % Her bireyin se�ilme olas�l���n� hesapla
    olasiliklar = fitness_degerleri / uygunluk_toplami;
    
    % Rulet tekerle�ini sim�le et
    rulet = cumsum(olasiliklar);
    
    % Rastgele bir say� �ret
    rastgele_sayi = rand();
    
    % Hangi bireyin se�ildi�ini belirle
    secilen_indeks = find(rulet >= rastgele_sayi, 1, 'first');
end