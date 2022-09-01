<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BlogRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $rules = [
            'title' => 'required|min:5',
            'body' => 'required|min:5',
        ];

        if ($this->route()->named('blogs.update')) {
            $rules['title'] .= ',' . $this->route()->parameter('blog')->id;
        }

        return $rules;
    }
}
