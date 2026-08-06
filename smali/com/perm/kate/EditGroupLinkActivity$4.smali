.class Lcom/perm/kate/EditGroupLinkActivity$4;
.super Ljava/lang/Object;
.source "EditGroupLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditGroupLinkActivity;->createLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditGroupLinkActivity;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditGroupLinkActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditGroupLinkActivity;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity$4;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    iput-object p2, p0, Lcom/perm/kate/EditGroupLinkActivity$4;->val$address:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/EditGroupLinkActivity$4;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 103
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity$4;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupLinkActivity;->access$300(Lcom/perm/kate/EditGroupLinkActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/EditGroupLinkActivity$4;->val$address:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/EditGroupLinkActivity$4;->val$text:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity$4;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupLinkActivity;->access$700(Lcom/perm/kate/EditGroupLinkActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/EditGroupLinkActivity$4;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->addGroupLink(JLjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 104
    return-void
.end method
