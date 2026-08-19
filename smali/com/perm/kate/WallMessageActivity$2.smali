.class Lcom/perm/kate/WallMessageActivity$2;
.super Ljava/lang/Thread;
.source "WallMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallMessageActivity;->displayPostById(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageActivity;

.field final synthetic val$owner_id:J

.field final synthetic val$post_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity;JJ)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$2;->this$0:Lcom/perm/kate/WallMessageActivity;

    iput-wide p2, p0, Lcom/perm/kate/WallMessageActivity$2;->val$post_id:J

    iput-wide p4, p0, Lcom/perm/kate/WallMessageActivity$2;->val$owner_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 205
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$2;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-wide v1, p0, Lcom/perm/kate/WallMessageActivity$2;->val$post_id:J

    iget-wide v3, p0, Lcom/perm/kate/WallMessageActivity$2;->val$owner_id:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/WallMessageActivity;->access$200(Lcom/perm/kate/WallMessageActivity;JJ)V

    return-void
.end method
