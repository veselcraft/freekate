.class Lcom/perm/kate/smile/SmileKeyboard$3;
.super Ljava/lang/Object;
.source "SmileKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/smile/SmileKeyboard;->createPopUpView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/smile/SmileKeyboard;


# direct methods
.method constructor <init>(Lcom/perm/kate/smile/SmileKeyboard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/smile/SmileKeyboard;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/perm/kate/smile/SmileKeyboard$3;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard$3;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v0, v0, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard$3;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v0, v0, Lcom/perm/kate/smile/SmileKeyboard;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {v0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;->stickersConfigure()V

    .line 194
    :cond_0
    return-void
.end method
