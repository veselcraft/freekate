.class Lcom/perm/kate/SearchWallAdapter$1;
.super Ljava/lang/Object;
.source "SearchWallAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallAdapter;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/perm/kate/SearchWallAdapter$1;->this$0:Lcom/perm/kate/SearchWallAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter$1;->this$0:Lcom/perm/kate/SearchWallAdapter;

    invoke-static {v0}, Lcom/perm/kate/SearchWallAdapter;->access$000(Lcom/perm/kate/SearchWallAdapter;)Lcom/perm/kate/BaseActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NewsCursorAdapter;->profileClick(Landroid/view/View;Landroid/app/Activity;)V

    return-void
.end method
