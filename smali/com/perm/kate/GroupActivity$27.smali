.class Lcom/perm/kate/GroupActivity$27;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->choseSubscriptionType()V
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

    .line 886
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$27;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 896
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/GroupActivity$27;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p2, p1}, Lcom/perm/kate/GroupActivity;->access$2500(Lcom/perm/kate/GroupActivity;I)V

    goto :goto_0

    .line 892
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$27;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/perm/kate/GroupActivity;->access$2500(Lcom/perm/kate/GroupActivity;I)V

    :goto_0
    return-void
.end method
