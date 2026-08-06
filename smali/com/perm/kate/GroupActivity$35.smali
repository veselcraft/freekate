.class Lcom/perm/kate/GroupActivity$35;
.super Lcom/perm/kate/session/Callback;
.source "GroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$35;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1085
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 1086
    .local v0, "phs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$35;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/GroupActivity;->access$3500(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)V

    .line 1087
    return-void
.end method
