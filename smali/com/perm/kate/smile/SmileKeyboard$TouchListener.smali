.class Lcom/perm/kate/smile/SmileKeyboard$TouchListener;
.super Ljava/lang/Object;
.source "SmileKeyboard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field kb:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/perm/kate/smile/SmileKeyboard;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard$TouchListener;->kb:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 104
    iget-object p1, p0, Lcom/perm/kate/smile/SmileKeyboard$TouchListener;->kb:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {p1}, Lcom/perm/kate/smile/SmileKeyboard;->editTouch()V

    const/4 p1, 0x0

    return p1
.end method
