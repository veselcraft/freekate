.class Lcom/perm/kate/FileManager$DirectoryFilter;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirectoryFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FileManager;


# direct methods
.method constructor <init>(Lcom/perm/kate/FileManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FileManager;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/perm/kate/FileManager$DirectoryFilter;->this$0:Lcom/perm/kate/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    .line 317
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x1

    .line 319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
