.class public Lcom/perm/utils/LocalLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "LocalLinkMovementMethod.java"


# static fields
.field static sInstance:Lcom/perm/utils/LocalLinkMovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/perm/utils/LocalLinkMovementMethod;
    .locals 1

    .line 19
    sget-object v0, Lcom/perm/utils/LocalLinkMovementMethod;->sInstance:Lcom/perm/utils/LocalLinkMovementMethod;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/perm/utils/LocalLinkMovementMethod;

    invoke-direct {v0}, Lcom/perm/utils/LocalLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/perm/utils/LocalLinkMovementMethod;->sInstance:Lcom/perm/utils/LocalLinkMovementMethod;

    .line 21
    :cond_0
    sget-object v0, Lcom/perm/utils/LocalLinkMovementMethod;->sInstance:Lcom/perm/utils/LocalLinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 28
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_5

    .line 32
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 33
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 35
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 36
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 38
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    .line 39
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    .line 41
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 42
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    int-to-float v2, v2

    .line 43
    invoke-virtual {v4, v3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 45
    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v2, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 48
    array-length v3, v2

    if-eqz v3, :cond_4

    const/4 p3, 0x0

    if-ne v0, v1, :cond_1

    .line 50
    aget-object p2, v2, p3

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 52
    aget-object v0, v2, p3

    .line 53
    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    aget-object p3, v2, p3

    .line 54
    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    .line 52
    invoke-static {p2, v0, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 58
    :cond_2
    :goto_0
    instance-of p2, p1, Lcom/perm/kate/ScaleTextView;

    if-eqz p2, :cond_3

    .line 59
    check-cast p1, Lcom/perm/kate/ScaleTextView;

    iput-boolean v1, p1, Lcom/perm/kate/ScaleTextView;->linkHit:Z

    :cond_3
    return v1

    .line 63
    :cond_4
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 70
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
