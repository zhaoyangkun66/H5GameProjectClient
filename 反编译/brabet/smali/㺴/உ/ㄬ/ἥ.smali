.class public final synthetic L㺴/உ/ㄬ/ἥ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 䂻:[Ljava/io/File;


# direct methods
.method public synthetic constructor <init>([Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ㄬ/ἥ;->䂻:[Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, L㺴/உ/ㄬ/ἥ;->䂻:[Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/internal/FileLruCache;->䂻([Ljava/io/File;)V

    return-void
.end method
