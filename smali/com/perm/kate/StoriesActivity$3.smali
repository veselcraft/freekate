.class Lcom/perm/kate/StoriesActivity$3;
.super Ljava/lang/Object;
.source "StoriesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/StoriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StoriesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/StoriesActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/perm/kate/StoriesActivity$3;->this$0:Lcom/perm/kate/StoriesActivity;

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

    .line 100
    iget-object p1, p0, Lcom/perm/kate/StoriesActivity$3;->this$0:Lcom/perm/kate/StoriesActivity;

    iget-object p1, p1, Lcom/perm/kate/StoriesActivity;->games:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Story;

    .line 101
    iget-object p2, p0, Lcom/perm/kate/StoriesActivity$3;->this$0:Lcom/perm/kate/StoriesActivity;

    iget-object p3, p2, Lcom/perm/kate/StoriesActivity;->games:Ljava/util/ArrayList;

    invoke-static {p1, p3, p2}, Lcom/perm/kate/StoriesActivity;->openStory(Lcom/perm/kate/api/Story;Ljava/util/ArrayList;Landroid/content/Context;)V

    return-void
.end method
