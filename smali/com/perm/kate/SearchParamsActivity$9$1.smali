.class Lcom/perm/kate/SearchParamsActivity$9$1;
.super Ljava/lang/Object;
.source "SearchParamsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchParamsActivity$9;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SearchParamsActivity$9;

.field final synthetic val$new_cities:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchParamsActivity$9;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/SearchParamsActivity$9;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$9$1;->this$1:Lcom/perm/kate/SearchParamsActivity$9;

    iput-object p2, p0, Lcom/perm/kate/SearchParamsActivity$9$1;->val$new_cities:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$9$1;->this$1:Lcom/perm/kate/SearchParamsActivity$9;

    iget-object v0, v0, Lcom/perm/kate/SearchParamsActivity$9;->this$0:Lcom/perm/kate/SearchParamsActivity;

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity$9$1;->val$new_cities:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchParamsActivity;->access$1400(Lcom/perm/kate/SearchParamsActivity;Ljava/util/ArrayList;)V

    .line 439
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$9$1;->this$1:Lcom/perm/kate/SearchParamsActivity$9;

    iget-object v0, v0, Lcom/perm/kate/SearchParamsActivity$9;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$1500(Lcom/perm/kate/SearchParamsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$9$1;->this$1:Lcom/perm/kate/SearchParamsActivity$9;

    iget-object v0, v0, Lcom/perm/kate/SearchParamsActivity$9;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$1600(Lcom/perm/kate/SearchParamsActivity;)V

    .line 441
    :cond_0
    return-void
.end method
