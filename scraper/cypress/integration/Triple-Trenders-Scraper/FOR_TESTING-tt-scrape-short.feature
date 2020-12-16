Feature: Daily Barchart Sdvances / Declines Scraper

    I want to scrape the data of barchart's top advancing and declining stocks over the past 1d, 5d, 1m timeframe (large cap us only for now).

    @focus
    Scenario: Scraping Barchart Trenders Info

        Given I'm logged in

        # -- Large Cap --

        # Large Cap - Trenders - today
        When I navigate to the "large-cap_trenders_today_main-view" page
        And I scrape the "large_cap_us" "trenders" for "today" on the "main-view", new data: "true"

        When I navigate to the "large-cap_trenders_today_technical-view" page
        And I scrape the "large_cap_us" "trenders" for "today" on the "technical-view", new data: "false"

        Then I update the database's bc scrape object for "large_cap_us" "trenders" "today"

        And I'm done with the backend server.
