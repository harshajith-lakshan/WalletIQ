# Contribution Guidelines

## Development Workflow

### Branch Naming
- Feature branches: `feature/feature-name`
- Bug fix branches: `bugfix/bug-name`
- Release branches: `release/v1.0.0`

### Commit Messages
Follow Conventional Commits:
```
feat: add new feature
fix: fix bug
docs: update documentation
style: code style changes (no logic change)
refactor: code refactoring
test: add or update tests
chore: dependency updates
```

### Pull Requests
1. Create branch from `main`
2. Make changes following code style
3. Test thoroughly before PR
4. Write clear PR description
5. Request review
6. Address feedback
7. Merge after approval

## Code Style

### Dart/Flutter
- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart)
- Use `dart format` for formatting
- Use `dart analyze` for linting
- Follow naming conventions:
  - Classes: `PascalCase`
  - Variables/functions: `camelCase`
  - Constants: `camelCase`
  - Private: prefix with `_`

### Project Structure
- One class per file
- File names: `snake_case.dart`
- Imports sorted alphabetically
- Use relative imports within project

## Testing

### Before Committing
```bash
# Format code
dart format .

# Analyze
dart analyze

# Run tests
flutter test
```

### Test Requirements
- Unit tests for business logic
- Widget tests for UI components
- Integration tests for critical flows
- Minimum 80% code coverage for critical paths

## Documentation

### Code Comments
- Explain "why", not "what"
- Comment complex algorithms
- Document public APIs
- Use `///` for public documentation

### README Updates
- Update README for new features
- Keep setup instructions current
- Document breaking changes

## Dependency Management

### Adding Dependencies
1. Choose production-ready packages
2. Check pub.dev rating and popularity
3. Ensure null-safety support
4. Update CHANGELOG.md
5. Update README if relevant

### Version Constraints
- Use caret syntax: `^1.2.0`
- Test with different versions
- Document major version changes

## Issues & Bug Reports

### Creating Issues
- Use descriptive titles
- Include reproduction steps
- Provide device/OS info
- Attach logs if relevant
- Link related issues

### Resolving Issues
- Link PR to issue
- Comment on progress
- Close with PR merge

## Performance

### Guidelines
- Profile with DevTools
- Optimize before adding features
- Use lazy loading for lists
- Minimize rebuilds
- Cache data appropriately

## Security

### Requirements
- No API keys in code
- No passwords in commits
- Use secure storage APIs
- Validate user input
- Sanitize error messages
- Review Firestore rules

## Release Process

### Version Numbering
Semantic Versioning: MAJOR.MINOR.PATCH
- MAJOR: Breaking changes
- MINOR: New features
- PATCH: Bug fixes

### Release Steps
1. Update version in `pubspec.yaml`
2. Update `CHANGELOG.md`
3. Create release branch
4. Run full test suite
5. Tag release
6. Create GitHub release
7. Build for Play Store
8. Submit for review

## Questions?

Join discussions or ask in issues for:
- Architecture questions
- Design decisions
- Implementation approaches
- Best practices
