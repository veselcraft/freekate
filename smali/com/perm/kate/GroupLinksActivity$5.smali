.class Lcom/perm/kate/GroupLinksActivity$5;
.super Ljava/lang/Object;
.source "GroupLinksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupLinksActivity;->deleteLinkInUiThread(Lcom/perm/kate/api/Link;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupLinksActivity;

.field final synthetic val$link:Lcom/perm/kate/api/Link;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupLinksActivity;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/perm/kate/GroupLinksActivity$5;->this$0:Lcom/perm/kate/GroupLinksActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupLinksActivity$5;->val$link:Lcom/perm/kate/api/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity$5;->this$0:Lcom/perm/kate/GroupLinksActivity;

    iget-object v1, p0, Lcom/perm/kate/GroupLinksActivity$5;->val$link:Lcom/perm/kate/api/Link;

    invoke-static {v0, v1}, Lcom/perm/kate/GroupLinksActivity;->access$500(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V

    .line 156
    return-void
.end method
