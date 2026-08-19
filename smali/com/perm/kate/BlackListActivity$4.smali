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

    .line 116
    iput-object p1, p0, Lcom/perm/kate/BlackListActivity$4;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/perm/kate/BlackListActivity$4;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-virtual {p1}, Lcom/perm/kate/BlackListActivity;->refreshInThread()V

    :cond_0
    return-void
.end method
