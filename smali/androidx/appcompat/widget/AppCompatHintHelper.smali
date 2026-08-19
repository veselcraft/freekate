.class abstract Landroidx/appcompat/widget/AppCompatHintHelper;
.super Ljava/lang/Object;
.source "AppCompatHintHelper.java"


# direct methods
.method static onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    if-eqz p0, :cond_0

    .line 28
    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 32
    :goto_0
    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_0

    .line 37
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p0
.end method
