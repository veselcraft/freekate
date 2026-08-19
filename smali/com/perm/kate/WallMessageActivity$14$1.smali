.class Lcom/perm/kate/WallMessageActivity$14$1;
.super Ljava/lang/Object;
.source "WallMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallMessageActivity$14;->success(Lcom/perm/kate/api/WallMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/WallMessageActivity$14;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity$14;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$14$1;->this$1:Lcom/perm/kate/WallMessageActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$14$1;->this$1:Lcom/perm/kate/WallMessageActivity$14;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity$14;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/WallMessageActivity;->access$700(Lcom/perm/kate/WallMessageActivity;)V

    .line 612
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$14$1;->this$1:Lcom/perm/kate/WallMessageActivity$14;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity$14;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/WallMessageActivity;->access$500(Lcom/perm/kate/WallMessageActivity;)V

    return-void
.end method
