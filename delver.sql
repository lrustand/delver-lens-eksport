SELECT
        SUM(quantity) AS 'Count',
        data_names.name AS 'Name'
    FROM cards, data_cards, data_names
    WHERE cards.card == data_cards._id
    AND data_cards.name = data_names._id
    GROUP BY data_names.name;
