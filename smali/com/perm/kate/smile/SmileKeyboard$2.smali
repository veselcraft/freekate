.class Lcom/perm/kate/smile/SmileKeyboard$2;
.super Ljava/lang/Object;
.source "SmileKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/smile/SmileKeyboard;


# direct methods
.method constructor <init>(Lcom/perm/kate/smile/SmileKeyboard;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/perm/kate/smile/SmileKeyboard$2;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/perm/kate/smile/SmileKeyboard$2;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object p1, p1, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/perm/kate/smile/SmileKeyboard$2;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object p1, p1, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {p1}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;->backspace()V

    :cond_0
    return-void
.end method
