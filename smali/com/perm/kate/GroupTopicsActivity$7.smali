.class Lcom/perm/kate/GroupTopicsActivity$7;
.super Ljava/lang/Object;
.source "GroupTopicsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->confirmRemoveGroupTopic(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;

.field final synthetic val$topic_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupTopicsActivity;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$7;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iput-wide p2, p0, Lcom/perm/kate/GroupTopicsActivity$7;->val$topic_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$7;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-wide v2, p0, Lcom/perm/kate/GroupTopicsActivity$7;->val$topic_id:J

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/GroupTopicsActivity;->removeGroupTopic(J)V

    .line 230
    return-void
.end method
