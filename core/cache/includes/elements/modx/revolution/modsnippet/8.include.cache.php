<?php
$faqData = [
    'general' => [
        'title' => 'General Inquiries',
        'questions' => [
            [
                'question' => 'How do I book a transfer?',
                'answer' => 'You can book a transfer easily through our website.'
            ],
            [
                'question' => 'What types of vehicles are available?',
                'answer' => 'We offer sedans, SUVs, vans, and luxury cars.'
            ]
        ]
    ],
    'booking' => [
        'title' => 'Booking & Reservations',
        'questions' => [
            [
                'question' => 'How far in advance should I book?',
                'answer' => 'We recommend booking at least 24 hours ahead.'
            ]
        ]
    ],
    'payment' => [
        'title' => 'Payments & Policies',
        'questions' => [
            [
                'question' => 'What payment methods do you accept?',
                'answer' => 'We currently accept cash only.'
            ]
        ]
    ]
];

$output = '';

// TAB BUTTONS
$output .= '<div class="nav-pills">';
foreach ($faqData as $key => $category) {
    $active = $key === 'general' ? 'active' : '';
    $output .= '<button class="tab-button '.$active.'" data-tab="'.$key.'">'.$category['title'].'</button>';
}
$output .= '</div>';

// TAB CONTENTS
foreach ($faqData as $key => $category) {
    $active = $key === 'general' ? 'active' : '';
    $output .= '<div class="tab-content '.$active.'" id="'.$key.'-tab">';

    foreach ($category['questions'] as $index => $item) {
        $show = $index === 0 ? 'show' : '';
        $activeBtn = $index === 0 ? 'active' : '';

        $output .= '
        <div class="faq-item">
            <h3 class="accordion-header">
                <button class="accordion-button '.$activeBtn.'" data-target="'.$key.'-'.$index.'">
                    '.$item['question'].'
                </button>
            </h3>
            <div class="accordion-body '.$show.'" id="'.$key.'-'.$index.'">
                <p>'.$item['answer'].'</p>
            </div>
        </div>';
    }

    $output .= '</div>';
}

return $output;
return;
