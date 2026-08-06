.class Lcom/perm/kate/GroupLinksActivity$3;
.super Lcom/perm/kate/session/Callback;
.source "GroupLinksActivity.java"


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

.field final synthetic val$link:Lcom/perm/kate/api/Link;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupLinksActivity;Landroid/app/Activity;Lcom/perm/kate/api/Link;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupLinksActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/perm/kate/GroupLinksActivity$3;->this$0:Lcom/perm/kate/GroupLinksActivity;

    iput-object p3, p0, Lcom/perm/kate/GroupLinksActivity$3;->val$link:Lcom/perm/kate/api/Link;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity$3;->this$0:Lcom/perm/kate/GroupLinksActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupLinksActivity;->showProgressBar(Z)V

    .line 138
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 139
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity$3;->this$0:Lcom/perm/kate/GroupLinksActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupLinksActivity;->showProgressBar(Z)V

    .line 133
    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity$3;->this$0:Lcom/perm/kate/GroupLinksActivity;

    iget-object v1, p0, Lcom/perm/kate/GroupLinksActivity$3;->val$link:Lcom/perm/kate/api/Link;

    invoke-static {v0, v1}, Lcom/perm/kate/GroupLinksActivity;->access$300(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V

    .line 134
    return-void
.end method
