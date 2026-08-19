.class final Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;
.super Ljava/lang/Object;
.source "InputContentInfoCompat.java"

# interfaces
.implements Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;


# instance fields
.field private final mContentUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;->mContentUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public requestPermission()V
    .locals 0

    return-void
.end method
