.class Lcom/perm/kate/EditGroupLinkActivity$7;
.super Ljava/lang/Object;
.source "EditGroupLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditGroupLinkActivity;->enableButtonsInUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditGroupLinkActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditGroupLinkActivity;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity$7;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity$7;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/EditGroupLinkActivity;->access$800(Lcom/perm/kate/EditGroupLinkActivity;Z)V

    return-void
.end method
