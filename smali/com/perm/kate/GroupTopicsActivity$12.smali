.class Lcom/perm/kate/GroupTopicsActivity$12;
.super Ljava/lang/Object;
.source "GroupTopicsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->showEditTitleDialog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;

.field final synthetic val$et_message:Landroid/widget/EditText;

.field final synthetic val$topic_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/widget/EditText;J)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$12;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupTopicsActivity$12;->val$et_message:Landroid/widget/EditText;

    iput-wide p3, p0, Lcom/perm/kate/GroupTopicsActivity$12;->val$topic_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 353
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$12;->val$et_message:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    iget-object p2, p0, Lcom/perm/kate/GroupTopicsActivity$12;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-wide v0, p0, Lcom/perm/kate/GroupTopicsActivity$12;->val$topic_id:J

    invoke-static {p2, v0, v1, p1}, Lcom/perm/kate/GroupTopicsActivity;->access$1200(Lcom/perm/kate/GroupTopicsActivity;JLjava/lang/String;)V

    return-void
.end method
