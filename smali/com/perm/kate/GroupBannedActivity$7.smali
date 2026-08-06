.class Lcom/perm/kate/GroupBannedActivity$7;
.super Ljava/lang/Object;
.source "GroupBannedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupBannedActivity;->showAddProfileLinkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupBannedActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBannedActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupBannedActivity;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity$7;->this$0:Lcom/perm/kate/GroupBannedActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupBannedActivity$7;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 237
    iget-object v2, p0, Lcom/perm/kate/GroupBannedActivity$7;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "input_text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 249
    :goto_0
    return-void

    .line 240
    :cond_0
    new-instance v1, Lcom/perm/kate/GroupBannedActivity$7$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/perm/kate/GroupBannedActivity$7$1;-><init>(Lcom/perm/kate/GroupBannedActivity$7;Landroid/app/Activity;)V

    .line 248
    .local v1, "user_id_callback":Lcom/perm/kate/session/Callback;
    iget-object v2, p0, Lcom/perm/kate/GroupBannedActivity$7;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->getUserIdFromLink(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/content/Context;)V

    goto :goto_0
.end method
