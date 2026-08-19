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

    .line 235
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity$7;->this$0:Lcom/perm/kate/GroupBannedActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupBannedActivity$7;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/perm/kate/GroupBannedActivity$7;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 240
    :cond_0
    new-instance p2, Lcom/perm/kate/GroupBannedActivity$7$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/perm/kate/GroupBannedActivity$7$1;-><init>(Lcom/perm/kate/GroupBannedActivity$7;Landroid/app/Activity;)V

    .line 248
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$7;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->getUserIdFromLink(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/content/Context;)V

    return-void
.end method
