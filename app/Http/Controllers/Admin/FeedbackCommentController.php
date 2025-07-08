<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\FeedbackComment;
use Illuminate\Http\Request;

class FeedbackCommentController extends Controller
{
    public function index()
    {
        $comments = FeedbackComment::with('user', 'feedback.product')->latest()->paginate(10);
        return view('admin.comments.index', compact('comments'));
    }
}