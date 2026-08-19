.class Lcom/perm/kate/GroupTopicsActivity$16;
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

    .line 411
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$16;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iput-wide p2, p0, Lcom/perm/kate/GroupTopicsActivity$16;->val$topic_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 413
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$16;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-wide v0, p0, Lcom/perm/kate/GroupTopicsActivity$16;->val$topic_id:J

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/GroupTopicsActivity;->removeGroupTopic(J)V

    return-void
.end method
