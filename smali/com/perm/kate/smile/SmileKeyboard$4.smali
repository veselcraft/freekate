.class Lcom/perm/kate/smile/SmileKeyboard$4;
.super Ljava/lang/Object;
.source "SmileKeyboard.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    .line 200
    iput-object p1, p0, Lcom/perm/kate/smile/SmileKeyboard$4;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard$4;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-static {v0}, Lcom/perm/kate/smile/SmileKeyboard;->access$000(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    return-void
.end method
