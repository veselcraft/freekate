.class Lcom/perm/kate/SearchParamsActivity$10$1;
.super Ljava/lang/Object;
.source "SearchParamsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchParamsActivity$10;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SearchParamsActivity$10;

.field final synthetic val$new_cities:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchParamsActivity$10;Ljava/util/ArrayList;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$10$1;->this$1:Lcom/perm/kate/SearchParamsActivity$10;

    iput-object p2, p0, Lcom/perm/kate/SearchParamsActivity$10$1;->val$new_cities:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$10$1;->this$1:Lcom/perm/kate/SearchParamsActivity$10;

    iget-object v0, v0, Lcom/perm/kate/SearchParamsActivity$10;->this$0:Lcom/perm/kate/SearchParamsActivity;

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity$10$1;->val$new_cities:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchParamsActivity;->access$1600(Lcom/perm/kate/SearchParamsActivity;Ljava/util/ArrayList;)V

    .line 485
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$10$1;->this$1:Lcom/perm/kate/SearchParamsActivity$10;

    iget-object v0, v0, Lcom/perm/kate/SearchParamsActivity$10;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$1700(Lcom/perm/kate/SearchParamsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$10$1;->this$1:Lcom/perm/kate/SearchParamsActivity$10;

    iget-object v0, v0, Lcom/perm/kate/SearchParamsActivity$10;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$1800(Lcom/perm/kate/SearchParamsActivity;)V

    :cond_0
    return-void
.end method
