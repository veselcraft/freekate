.class Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;
.super Ljava/lang/Object;
.source "SmileKeyboard.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/smile/SmileKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/smile/SmileKeyboard;


# direct methods
.method constructor <init>(Lcom/perm/kate/smile/SmileKeyboard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/smile/SmileKeyboard;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 272
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 273
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-static {v3}, Lcom/perm/kate/smile/SmileKeyboard;->access$100(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 274
    iget-object v3, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-static {v3}, Lcom/perm/kate/smile/SmileKeyboard;->access$100(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 275
    .local v2, "screenHeight":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 287
    .local v0, "heightDifference":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 288
    iget-object v3, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-static {v3}, Lcom/perm/kate/smile/SmileKeyboard;->access$100(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/smile/SmileKeyboard;->getViewInset(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    iget v3, v3, Lcom/perm/kate/smile/SmileKeyboard;->previousHeightDiffrence:I

    sub-int/2addr v3, v0

    const/16 v4, 0x32

    if-le v3, v4, :cond_1

    .line 290
    iget-object v3, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-static {v3}, Lcom/perm/kate/smile/SmileKeyboard;->access$200(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 291
    iget-object v3, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-static {v3}, Lcom/perm/kate/smile/SmileKeyboard;->access$200(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 292
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    iput v0, v3, Lcom/perm/kate/smile/SmileKeyboard;->previousHeightDiffrence:I

    .line 293
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    if-le v0, v3, :cond_3

    .line 294
    iget-object v3, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/perm/kate/smile/SmileKeyboard;->access$302(Lcom/perm/kate/smile/SmileKeyboard;Z)Z

    .line 297
    const-wide v4, 0x407c200000000000L    # 450.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    if-gt v0, v3, :cond_2

    .line 299
    iget-object v3, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-static {v3, v0}, Lcom/perm/kate/smile/SmileKeyboard;->access$400(Lcom/perm/kate/smile/SmileKeyboard;I)V

    .line 302
    :cond_2
    :goto_0
    return-void

    .line 301
    :cond_3
    iget-object v3, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/perm/kate/smile/SmileKeyboard;->access$302(Lcom/perm/kate/smile/SmileKeyboard;Z)Z

    goto :goto_0
.end method
