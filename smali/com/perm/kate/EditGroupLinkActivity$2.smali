.class Lcom/perm/kate/EditGroupLinkActivity$2;
.super Ljava/lang/Object;
.source "EditGroupLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditGroupLinkActivity;->save()V
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
    .line 62
    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity$2;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 65
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity$2;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupLinkActivity;->access$300(Lcom/perm/kate/EditGroupLinkActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity$2;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupLinkActivity;->access$000(Lcom/perm/kate/EditGroupLinkActivity;)Lcom/perm/kate/api/Link;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/api/Link;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity$2;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupLinkActivity;->access$000(Lcom/perm/kate/EditGroupLinkActivity;)Lcom/perm/kate/api/Link;

    move-result-object v0

    iget-object v6, v0, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity$2;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupLinkActivity;->access$400(Lcom/perm/kate/EditGroupLinkActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/EditGroupLinkActivity$2;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->editGroupLink(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 66
    return-void
.end method
