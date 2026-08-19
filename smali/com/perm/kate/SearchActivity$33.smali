.class Lcom/perm/kate/SearchActivity$33;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity;->displaySearchedDialogsInUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 1290
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$33;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1293
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$33;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$7700(Lcom/perm/kate/SearchActivity;)V

    return-void
.end method
