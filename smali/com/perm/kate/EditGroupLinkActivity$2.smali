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

    .line 62
    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity$2;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 65
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/EditGroupLinkActivity$2;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v1}, Lcom/perm/kate/EditGroupLinkActivity;->access$300(Lcom/perm/kate/EditGroupLinkActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/EditGroupLinkActivity$2;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v3}, Lcom/perm/kate/EditGroupLinkActivity;->access$000(Lcom/perm/kate/EditGroupLinkActivity;)Lcom/perm/kate/api/Link;

    move-result-object v3

    iget-object v3, v3, Lcom/perm/kate/api/Link;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/perm/kate/EditGroupLinkActivity$2;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v5}, Lcom/perm/kate/EditGroupLinkActivity;->access$000(Lcom/perm/kate/EditGroupLinkActivity;)Lcom/perm/kate/api/Link;

    move-result-object v5

    iget-object v5, v5, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/EditGroupLinkActivity$2;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v6}, Lcom/perm/kate/EditGroupLinkActivity;->access$400(Lcom/perm/kate/EditGroupLinkActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/EditGroupLinkActivity$2;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->editGroupLink(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
