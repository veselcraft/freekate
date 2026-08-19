.class Lcom/perm/kate/GroupActivity$48;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->showGroupTokenDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 1350
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$48;->this$0:Lcom/perm/kate/GroupActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupActivity$48;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1352
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$48;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1353
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x32

    if-ge p2, v0, :cond_0

    return-void

    .line 1355
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/GroupActivity$48;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p2}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/perm/kate/KApplication;->addGroupToken(Ljava/lang/String;J)V

    .line 1356
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$48;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$3900(Lcom/perm/kate/GroupActivity;)V

    return-void
.end method
