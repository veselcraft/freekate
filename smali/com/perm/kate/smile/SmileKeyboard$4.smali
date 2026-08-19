.class Lcom/perm/kate/smile/SmileKeyboard$4;
.super Ljava/lang/Object;
.source "SmileKeyboard.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/smile/SmileKeyboard;


# direct methods
.method constructor <init>(Lcom/perm/kate/smile/SmileKeyboard;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/perm/kate/smile/SmileKeyboard$4;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/perm/kate/smile/SmileKeyboard$4;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-static {v0}, Lcom/perm/kate/smile/SmileKeyboard;->access$000(Lcom/perm/kate/smile/SmileKeyboard;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
