.class Lcom/perm/kate/GroupActivity$36;
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

    .line 1139
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$36;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 1143
    check-cast p1, Ljava/util/ArrayList;

    .line 1144
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$36;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/GroupActivity;->access$3600(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)V

    return-void
.end method
