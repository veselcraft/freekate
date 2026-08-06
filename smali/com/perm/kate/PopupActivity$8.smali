.class Lcom/perm/kate/PopupActivity$8;
.super Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;
.source "PopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PopupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PopupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PopupActivity;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/perm/kate/PopupActivity$8;->this$0:Lcom/perm/kate/PopupActivity;

    invoke-direct {p0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public backspace()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/perm/kate/PopupActivity$8;->this$0:Lcom/perm/kate/PopupActivity;

    invoke-static {v0}, Lcom/perm/kate/PopupActivity;->access$700(Lcom/perm/kate/PopupActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/utils/SmileHelper;->sendBackspace(Landroid/widget/EditText;)V

    .line 357
    return-void
.end method

.method public selected(Ljava/lang/String;)V
    .locals 1
    .param p1, "smile_code"    # Ljava/lang/String;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/perm/kate/PopupActivity$8;->this$0:Lcom/perm/kate/PopupActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/PopupActivity;->access$600(Lcom/perm/kate/PopupActivity;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public smileButtonClick()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/perm/kate/PopupActivity$8;->this$0:Lcom/perm/kate/PopupActivity;

    invoke-static {v0}, Lcom/perm/kate/PopupActivity;->access$000(Lcom/perm/kate/PopupActivity;)V

    .line 362
    return-void
.end method

.method public stickerSelected(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "sticker_id"    # Ljava/lang/Integer;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/perm/kate/PopupActivity$8;->this$0:Lcom/perm/kate/PopupActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/PopupActivity;->access$800(Lcom/perm/kate/PopupActivity;Ljava/lang/Integer;)V

    .line 367
    return-void
.end method
