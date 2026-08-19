.class Lcom/perm/kate/GroupActivity$19;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$19;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 629
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$19;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$700(Lcom/perm/kate/GroupActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/GroupActivity$19;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$700(Lcom/perm/kate/GroupActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_1

    :cond_0
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/GroupActivity$19;->this$0:Lcom/perm/kate/GroupActivity;

    .line 630
    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$400(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity$19;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->isAdminInGroup(Ljava/lang/Long;J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 631
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$19;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$2000(Lcom/perm/kate/GroupActivity;)V

    :cond_2
    return-void
.end method
