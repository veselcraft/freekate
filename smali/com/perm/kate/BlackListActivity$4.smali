.class Lcom/perm/kate/BlackListActivity$4;
.super Ljava/lang/Object;
.source "BlackListActivity.java"

# interfaces
.implements Lcom/perm/kate/BlackListActivity$BlackListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BlackListActivity;->removeItem(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BlackListActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BlackListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BlackListActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/perm/kate/BlackListActivity$4;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$4;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-virtual {v0}, Lcom/perm/kate/BlackListActivity;->refreshInThread()V

    .line 121
    :cond_0
    return-void
.end method
