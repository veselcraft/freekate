.class Lcom/perm/kate/SearchParamsActivity$11$1;
.super Ljava/lang/Object;
.source "SearchParamsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchParamsActivity$11;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SearchParamsActivity$11;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchParamsActivity$11;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$11$1;->this$1:Lcom/perm/kate/SearchParamsActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$11$1;->this$1:Lcom/perm/kate/SearchParamsActivity$11;

    iget-object v0, v0, Lcom/perm/kate/SearchParamsActivity$11;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$1900(Lcom/perm/kate/SearchParamsActivity;)V

    .line 513
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$11$1;->this$1:Lcom/perm/kate/SearchParamsActivity$11;

    iget-object v0, v0, Lcom/perm/kate/SearchParamsActivity$11;->this$0:Lcom/perm/kate/SearchParamsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/SearchParamsActivity;->access$2000(Lcom/perm/kate/SearchParamsActivity;Z)V

    .line 514
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$11$1;->this$1:Lcom/perm/kate/SearchParamsActivity$11;

    iget-object v0, v0, Lcom/perm/kate/SearchParamsActivity$11;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$2100(Lcom/perm/kate/SearchParamsActivity;)V

    return-void
.end method
