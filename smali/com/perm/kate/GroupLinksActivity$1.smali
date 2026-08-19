.class Lcom/perm/kate/GroupLinksActivity$1;
.super Ljava/lang/Object;
.source "GroupLinksActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupLinksActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupLinksActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/perm/kate/GroupLinksActivity$1;->this$0:Lcom/perm/kate/GroupLinksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Link;

    if-eqz p1, :cond_0

    .line 73
    iget-object p2, p0, Lcom/perm/kate/GroupLinksActivity$1;->this$0:Lcom/perm/kate/GroupLinksActivity;

    iget-object p1, p1, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/perm/kate/GroupLinksActivity;->access$000(Lcom/perm/kate/GroupLinksActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
