.class Lcom/perm/kate/WallMessageActivity$1;
.super Ljava/lang/Thread;
.source "WallMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallMessageActivity;->displaySerializedPost(Lcom/perm/kate/api/WallMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallMessageActivity;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$1;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 158
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$1;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity$1;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v1, v1, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->id:J

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity$1;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v1, v1, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v1, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/perm/kate/WallMessageActivity;->access$000(Lcom/perm/kate/WallMessageActivity;JJ)V

    .line 159
    return-void
.end method
