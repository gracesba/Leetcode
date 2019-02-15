-- 597. Friend Requests I: Overall Acceptance Rate

SELECT coalesce(count(distinct sender_id, send_to_id), 0) as accepted / (SELECT count(distincr sender_id, send_to_id) FROM friend_request) as accept_rate
FROM friend_request fr inner join request_accepted ac on fr.sender_id = ac.requester_id and fr.send_to_id = ra.accepter_id 

