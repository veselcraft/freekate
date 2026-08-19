.class Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;
.super Ljava/lang/Object;
.source "SmileKeyboard.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/smile/SmileKeyboard;


# direct methods
.method constructor <init>(Lcom/perm/kate/smile/SmileKeyboard;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 273
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-static {v1}, Lcom/perm/kate/smile/SmileKeyboard;->access$100(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 277
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-static {v2}, Lcom/perm/kate/smile/SmileKeyboard;->access$100(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 281
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-static {v0}, Lcom/perm/kate/smile/SmileKeyboard;->access$100(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/smile/SmileKeyboard;->getViewInset(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v2, v0

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v0, v0, Lcom/perm/kate/smile/SmileKeyboard;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    sub-int v2, v1, v0

    .line 315
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    iget v1, v0, Lcom/perm/kate/smile/SmileKeyboard;->previousHeightDiffrence:I

    sub-int/2addr v1, v2

    const/16 v3, 0x32

    if-le v1, v3, :cond_2

    .line 316
    invoke-static {v0}, Lcom/perm/kate/smile/SmileKeyboard;->access$200(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-static {v0}, Lcom/perm/kate/smile/SmileKeyboard;->access$200(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    iput v2, v0, Lcom/perm/kate/smile/SmileKeyboard;->previousHeightDiffrence:I

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 319
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    if-le v2, v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/smile/SmileKeyboard;->access$302(Lcom/perm/kate/smile/SmileKeyboard;Z)Z

    const-wide v0, 0x407c200000000000L    # 450.0

    .line 323
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    if-gt v2, v0, :cond_4

    .line 325
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-static {v0, v2}, Lcom/perm/kate/smile/SmileKeyboard;->access$400(Lcom/perm/kate/smile/SmileKeyboard;I)V

    goto :goto_1

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard$LayoutListener;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/smile/SmileKeyboard;->access$302(Lcom/perm/kate/smile/SmileKeyboard;Z)Z

    :cond_4
    :goto_1
    return-void
.end method
