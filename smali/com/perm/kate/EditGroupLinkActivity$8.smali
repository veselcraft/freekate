.class Lcom/perm/kate/EditGroupLinkActivity$8;
.super Ljava/lang/Object;
.source "EditGroupLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditGroupLinkActivity;->successInUiThread()V
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
    .param p1, "this$0"    # Lcom/perm/kate/EditGroupLinkActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity$8;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity$8;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupLinkActivity;->access$900(Lcom/perm/kate/EditGroupLinkActivity;)V

    .line 160
    return-void
.end method
