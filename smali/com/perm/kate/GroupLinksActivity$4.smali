.class Lcom/perm/kate/GroupLinksActivity$4;
.super Ljava/lang/Object;
.source "GroupLinksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupLinksActivity;->onDelete(Lcom/perm/kate/api/Link;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupLinksActivity;

.field final synthetic val$delete_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$link:Lcom/perm/kate/api/Link;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;Lcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupLinksActivity;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/perm/kate/GroupLinksActivity$4;->this$0:Lcom/perm/kate/GroupLinksActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupLinksActivity$4;->val$link:Lcom/perm/kate/api/Link;

    iput-object p3, p0, Lcom/perm/kate/GroupLinksActivity$4;->val$delete_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 144
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity$4;->this$0:Lcom/perm/kate/GroupLinksActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupLinksActivity;->access$400(Lcom/perm/kate/GroupLinksActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity$4;->val$link:Lcom/perm/kate/api/Link;

    iget-object v0, v0, Lcom/perm/kate/api/Link;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/GroupLinksActivity$4;->val$delete_callback:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/GroupLinksActivity$4;->this$0:Lcom/perm/kate/GroupLinksActivity;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->deleteGroupLink(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 145
    return-void
.end method
