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


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchParamsActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/SearchParamsActivity$10;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$10$1;->this$1:Lcom/perm/kate/SearchParamsActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$10$1;->this$1:Lcom/perm/kate/SearchParamsActivity$10;

    iget-object v0, v0, Lcom/perm/kate/SearchParamsActivity$10;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$1700(Lcom/perm/kate/SearchParamsActivity;)V

    .line 467
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$10$1;->this$1:Lcom/perm/kate/SearchParamsActivity$10;

    iget-object v0, v0, Lcom/perm/kate/SearchParamsActivity$10;->this$0:Lcom/perm/kate/SearchParamsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/SearchParamsActivity;->access$1800(Lcom/perm/kate/SearchParamsActivity;Z)V

    .line 468
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$10$1;->this$1:Lcom/perm/kate/SearchParamsActivity$10;

    iget-object v0, v0, Lcom/perm/kate/SearchParamsActivity$10;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$1900(Lcom/perm/kate/SearchParamsActivity;)V

    .line 469
    return-void
.end method
