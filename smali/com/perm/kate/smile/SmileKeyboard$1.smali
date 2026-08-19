.class Lcom/perm/kate/smile/SmileKeyboard$1;
.super Ljava/lang/Object;
.source "SmileKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/smile/SmileKeyboard;


# direct methods
.method constructor <init>(Lcom/perm/kate/smile/SmileKeyboard;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/perm/kate/smile/SmileKeyboard$1;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/perm/kate/smile/SmileKeyboard$1;->this$0:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {p1}, Lcom/perm/kate/smile/SmileKeyboard;->smileButtonClick()V

    return-void
.end method
