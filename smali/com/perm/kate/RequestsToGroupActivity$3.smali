.class Lcom/perm/kate/RequestsToGroupActivity$3;
.super Ljava/lang/Object;
.source "RequestsToGroupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/RequestsToGroupActivity;->displayDataInUI(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsToGroupActivity;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsToGroupActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/RequestsToGroupActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$3;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    iput-object p2, p0, Lcom/perm/kate/RequestsToGroupActivity$3;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity$3;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    iget-object v1, p0, Lcom/perm/kate/RequestsToGroupActivity$3;->val$users:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/RequestsToGroupActivity;->access$500(Lcom/perm/kate/RequestsToGroupActivity;Ljava/util/ArrayList;)V

    .line 98
    return-void
.end method
